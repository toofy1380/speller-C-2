CC = clang
CFLAGS = -ggdb3 -O0 -Qunused-arguments -std=c11 -Wall -Werror
EXE = speller
HDRS = dictionary.h
LIBS =
SRCS = speller.c dictionary.c
OBJS = $(SRCS:.c=.o)
$(EXE): $(OBJS) $(HDRS) Makefile
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)
$(OBJS): $(HDRS) Makefile
clean:
	rm -f core $(EXE) *.o
