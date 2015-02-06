CC = gcc
CFLAGS = -Llib -Iinclude -lfoo
TARGET = bar
SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)

export PROJ_ROOT = $(shell pwd)
export LIB_DIR = $(PROJ_ROOT)/lib
export INC_DIR = $(PROJ_ROOT)/include

all: $(TARGET)

$(TARGET): deps $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(CFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm $(OBJECTS) $(TARGET)

very_clean: clean
	$(MAKE) -Cfoo very_clean

deps:
	$(MAKE) -Cfoo install
