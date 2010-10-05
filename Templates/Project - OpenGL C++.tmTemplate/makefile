LIBPATH += -L"/System/Library/Frameworks/OpenGL.framework/Libraries"

FRAMEWORK = -framework GLUT
FRAMEWORK += -framework OpenGL

CC = g++
CFLAGS = -Wall
LIBRARIES = -lGL -lGLU -lm -lstdc++ -lpng

OBJS = main.o glpng.o
SRCS = main.cpp

all: ${TM_NEW_FILE_BASENAME}

${TM_NEW_FILE_BASENAME}: $(OBJS)
	$(CC) $(FRAMEWORK) $(CFLAGS) -o $@ $(LIBPATH) $(LIBRARIES) $(OBJS)

glpng.o :
	g++ -c -o glpng.o glpng/glpng.c

clean :
	rm -rf *.o *.mkout ${TM_NEW_FILE_BASENAME}