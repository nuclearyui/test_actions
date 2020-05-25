TARGET =  app

SRCS = $(shell find .src    -type f -name .cpp)
HEADS =$(shell find .include -type f -name .h)
OBJS = $(SRCS.cpp=.o)
DEPS = Makefile.depend

INCLUDES = -I.include
CXXFLAGS = -02 -Wall $(INCLUDES)
LDFLAGS = -lm


all:$(TARGET)

$(TARGET) $(OBJS) $(HEADS)
    $(CXX) $(LDFLAGS) -o $@ $(OBJS)
  
runall
    @.$(TARGET)
  
 .PHONY： depend clean
 depend
    $(CXX) $(INCLUDES) -MM $(SRCS)  $(DEPS)
    @sed -i -E s^（.+).o ([^ ]+)121.o 21g $(DEPS)
   
clean:
    $(RM) $(OBJS） $(TARGET)
     
 -include $(DEPS）
