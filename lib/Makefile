BIN = libode

CCFLAGS := $(CFLAGS) -std=c99 -pedantic -O2 -fPIC -I../ -Iode/include/ -Lode/ode/src/.libs/


SRC =
OBJ = $(SRC:.c=.o)
LIBS = -lm -lstdc++
STATIC_LIBS = -lode


ifeq ($(OS),Windows_NT)
	BIN := $(BIN).dll.bodged
	CCFLAGS := $(CCFLAGS) -Wl,-soname,$(BIN)
	LFLAGS := -Wl,--whole-archive -Wl,-Bstatic $(STATIC_LIBS) -Wl,--no-whole-archive -Wl,-Bdynamic $(LIBS)
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		BIN := $(BIN).dylib.bodged
		CCFLAGS := $(CCFLAGS) -Wl,-install_name,$(BIN)
		LFLAGS := $(LIBS) -all_load $(STATIC_LIBS)
	else
		BIN := $(BIN).so.bodged
		CCFLAGS := $(CCFLAGS) -Wl,-soname,$(BIN) -Wl,-rpath,'$$ORIGIN/'
		LFLAGS := -Wl,--whole-archive -Wl,-Bstatic $(STATIC_LIBS) -Wl,--no-whole-archive -Wl,-Bdynamic $(LIBS)
	endif
endif

build: $(BIN)


$(BIN):
	cd ode/ &&										\
		./bootstrap &&									\
		./configure --enable-double-precision --disable-demos --enable-libccd 		\
			    --disable-threading-intf --disable-asserts --with-drawstuff=none 	\
		            --with-pic &&							\
		make
	$(CC) -shared $(SRC) $(CCFLAGS) -o $(BIN) $(LFLAGS)
	if [[ "$$OSTYPE" == "darwin"* ]] ; then							\
		echo "Installing new name for libc++";						\
		install_name_tool -change /usr/lib/libc++.1.dylib 				\
			@loader_path/libc++.1.dylib 						\
			$(BIN);									\
	fi

clean:
	cd ode/ && git clean -fdx
	rm -f $(BIN) $(OBJS)
