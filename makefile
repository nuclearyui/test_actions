CC=gcc

INCLUDEDIR= -I. -I ./include

TARGET=main

EXTFLAGS=

LIBDIR=

CFLAGS= -lpthread

CSRC = $(wildcard *.c */*.c)

COBJ = $(patsubst %c,%o,$(CSRC))

$(TARGET):$(COBJ)

 $(CC) $(COBJ) $(INCLUDEDIR) $(LIBDIR) $(CFLAGS) -o $(TARGET)

$(COBJ) : %o : %c
 $(CC)  $(INCLUDEDIR) $(EXTFLAGS)  -c $< -o $@
.PHONY : clean
clean :
 rm -rf $(TARGET)  $(COBJ)
