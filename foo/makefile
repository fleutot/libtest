CC = gcc
CFLAGS =
TARGET = libfoo.a
SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)
INCLUDES = $(wildcard *.h)

# Should use default if LIB_DIR and INC_DIR are undefined.
INSTALLED_LIB = $(LIB_DIR)/$(TARGET)
INSTALLED_INC = $(INC_DIR)/$(INCLUDES)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	ar rcs $@ $^

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm $(OBJECTS) $(TARGET)

very_clean: clean
	rm $(INSTALLED_INC) $(INSTALLED_LIB)

install: $(INSTALLED_LIB) $(INSTALLED_INC)

$(INSTALLED_LIB): $(TARGET)
	cp $^ $@

$(INSTALLED_INC): $(INCLUDES)
	cp $^ $@
