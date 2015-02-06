CC = gcc
CFLAGS =
TARGET = libfoo.a
SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	ar rcs $@ $^

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm $(OBJECTS) $(TARGET)
