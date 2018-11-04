CC = g++
CFLAGS = -c -Wall -Wsign-compare -ggdb
LDFLAGS =
SOURCES = Main.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = pso

all : $(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXECUTABLE)

$(OBJECTS) : $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES)

clean :
	rm *.o $(EXECUTABLE)