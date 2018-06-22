# This Makefile should work on most unix platforms with GNU cc

CC = gcc
GTKCONFIG = gtk-config

CFLAGS = -Wall -Werror -ansi -O2 `$(GTKCONFIG) --cflags` -DNDEBUG
LFLAGS = `$(GTKCONFIG) --libs`

all: mastermind

%.o: %.c
	$(CC) $(CFLAGS) -c $<

mastermind: mm.o
	$(CC) -o mastermind mm.o $(LFLAGS)

clean:
	rm -f *.o *~
