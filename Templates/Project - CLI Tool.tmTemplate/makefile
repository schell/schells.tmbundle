CC = g++
CFLAGS = -Wall
LIBRARIES = -lm -lstdc++
SRCS = main.cpp
OBJS = main.o

all: ${TM_NEW_FILE_BASENAME}

${TM_NEW_FILE_BASENAME}: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBRARIES)

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $(SRCS)