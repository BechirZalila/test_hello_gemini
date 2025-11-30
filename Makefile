# fichier : Makefile

CC = gcc
CFLAGS = -Wall -Wextra -std=c11

TARGET = hello
LIB_TARGET = libhello.a
SRC = hello.c
LIB_SRC = hello_lib.c
OBJ = $(SRC:.c=.o)
LIB_OBJ = $(LIB_SRC:.c=.o)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJ) $(LIB_TARGET)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ) -L. -lhello

$(LIB_TARGET): $(LIB_OBJ)
	ar rcs $(LIB_TARGET) $(LIB_OBJ)

clean:
	rm -f $(TARGET) $(OBJ) $(LIB_TARGET) $(LIB_OBJ)
