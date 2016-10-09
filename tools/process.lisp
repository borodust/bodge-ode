(in-package :%clode.utils)


(defmacro with-dispatch-macro (char ((stream &optional (prev-fn (gensym))) &rest fn-body) &body body)
  (with-gensyms (rtable char-param int-param)
    `(let ((,rtable (copy-readtable))
           (,prev-fn (get-dispatch-macro-character #\# ,char)))
       (declare (ignorable ,prev-fn))
       (unwind-protect
            (progn
              (set-dispatch-macro-character #\# ,char
                                            (lambda (,stream ,char-param ,int-param)
                                              (declare (ignore ,char-param ,int-param))
                                              ,@fn-body))
              ,@body)
         (setf *readtable* ,rtable)))))


(defun postprocess-source (src)
  src)


(defgeneric process-definition (symbol def)
  (:method (symbol def) (declare (ignore symbol)) def))


(defmethod process-definition ((symbol (eql 'cl:export)) def)
  (destructuring-bind (def-type lispify) def
    (destructuring-bind (fn string-name type) (eval lispify)
      `,(lispify string-name type :keyword))))


(defmethod process-definition ((symbol (eql 'cffi:defctype)) def)
  (destructuring-bind (def-type (fn string-name type) &rest rest) def
    `(ctype ,(lispify string-name type) ,string-name)))


(defmethod process-definition ((symbol (eql 'cl:defconstant)) def)
  (destructuring-bind (def-type (fn string-name type) &rest rest) def
    `(constant (,(make-keyword (lispify string-name type)) ,string-name))))


(defmethod process-definition ((symbol (eql 'cffi:defcenum)) def)
  (flet ((defelem (el) `((,(lispify (second el) (third el) :keyword) ,(second el)))))
    (destructuring-bind (def-type (fn string-name type) &rest elements) def
      `(cenum ,(lispify string-name type)
              ,@(loop for el in elements collecting
                     (if (eq 'lispify (first el))
                         (defelem el)
                         (defelem (first el))))))))


(defmethod process-definition ((symbol (eql 'defanonenum)) def)
  `(defanonenum ,@(loop for el in (rest def) collecting
                       (if (eq 'lispify (first el))
                           (eval el)
                           `(,(eval (first el)) ,(second el))))))


(defmethod process-definition ((symbol (eql 'cffi:defcstruct)) def)
  (destructuring-bind (def-type (fn string-name type) &rest elements) def
    `(cstruct ,(lispify string-name type) ,string-name
              ,@(loop for (el-name el-type) in (cddr def)
                   for (fn el-string-name type) = el-name
                   collecting `(,(lispify el-string-name type) ,el-string-name
                                 :type ,(if (listp el-type)
                                            (lispify (second el-type)
                                                     (third el-type))
                                            el-type))))))


(defun postprocess-sexp (exp &optional (translate-p t))
  (loop for def in exp
     for processed = (if translate-p (process-definition (first def) def) def)
     with types and constants and enums and anonenums and structs and functions and others do
       (case (first def)
         (cffi:defctype (push processed types))
         (cl:defconstant (push processed constants))
         (cffi:defcenum (push processed enums))
         (defanonenum (push processed anonenums))
         (cffi:defcstruct (push processed structs))
         (cffi:defcfun (push processed functions))
         (otherwise (push processed others)))
     finally (return (list types constants anonenums enums structs functions others))))


(defun postprocess (pathname &optional (translate-p t))
  (let ((source (postprocess-source (read-file-into-string pathname))))
    (with-input-from-string (in source)
      (postprocess-sexp (loop for sexp = (read in nil :eof) until (eq sexp :eof)
                           collect sexp) translate-p))))


(defun parse-swig-output (path translate-p)
  (with-dispatch-macro #\.
      ((stream)
       (let ((exp (read stream t nil t)))
         (if (and (not translate-p) (listp exp) (eq 'lispify (first exp)))
             (eval exp)
             exp)))
    (postprocess path translate-p)))
