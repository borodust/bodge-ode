(in-package :%clode.utils)


(defmacro defanonenum (&body enums)
   "Converts anonymous enums to defconstants."
   `(progn ,@(loop with last-value = 0
                for name in enums
                for index = 0 then (1+ index)
                when (listp name) do (setf index 0
                                           last-value (second name)
                                           name (first name))
                collect `(defconstant ,name (+ ,last-value ,index)))))


(defun lispify (name flag &optional (package *package*))
  (labels ((strip-d (str) (cond
                            ((starts-with-subseq "d" str :test #'equalp) (subseq str 1))
                            ((starts-with-subseq "d_" str :test #'equalp) (subseq str 2))
                            (t str)))
           (helper (lst last rest &aux (c (car lst)))
             (cond
               ((null lst)
                rest)
               ((upper-case-p c)
                (helper (cdr lst) 'upper
                        (case last
                          ((lower digit) (list* c #\- rest))
                          (t (cons c rest)))))
               ((lower-case-p c)
                (helper (cdr lst) 'lower (cons (char-upcase c) rest)))

               ((digit-char-p c)
                (helper (cdr lst) 'digit
                        (case last
;                          ((upper lower) (list* c #\- rest))
                          (t (cons c rest)))))

               ((char-equal c #\_)
                (helper (cdr lst) '_ (cons #\- rest)))
               (t
                (error "Invalid character: ~A" c)))))
    (let* ((fix (case flag
                  ((constant enumvalue) "+")
                  (variable "*")
                  (t ""))))
      (intern
       (concatenate
        'string
        fix
        (nreverse (helper (concatenate 'list (strip-d name)) nil nil))
        fix)
       package))))
