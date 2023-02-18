# Compiler:
CC = g++


# Compiler flags:
#  -g     - this flag adds debugging information to the executable file
#  -Wall  - this flag is used to turn on most compiler warnings
CFLAGS = -g -Wall

# Build target:
TARGET = main

# Source directory:
DIR = src

# Build directory:
BDIR = build


all: $(BDIR)/$(TARGET)

$(BDIR)/$(TARGET): $(DIR)/$(TARGET).cpp
	$(CC) $(CFLAGS) $(DIR)/$(TARGET).cpp -o $(TARGET)
	mv $(TARGET) $(BDIR)

run: $(BDIR)/$(TARGET)
	./$(BDIR)/$(TARGET)

clean: 
	rm $(BDIR)/*
