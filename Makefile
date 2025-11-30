# fichier : Makefile

CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = hello
SRC = hello.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
