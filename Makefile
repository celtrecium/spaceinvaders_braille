CC=gcc
CFLAGS=-Iinclude -pedantic -Wall -Wextra -Wsign-conversion -Wconversion -Wshadow -ansi
OBJS=codl.o main.o si_engine.o si_game.o si_main.o
SRC=src
TEXTURES=textures

all: options codl.o main.o si_engine.o si_game.o si_main.o invaders

options:
	@echo Space Invaders build options:
	@echo "CC	= $(CC)"
	@echo "CFLAGS	= $(CFLAGS)"
	@echo

clean:
	rm -rf invaders

codl.o: ${SRC}/codl.c
	${CC} ${CFLAGS} -c $^

main.o: ${SRC}/main.c
	${CC} ${CFLAGS} -c $^

si_engine.o: ${SRC}/si_engine.c
	${CC} ${CFLAGS} -c $^

si_game.o: ${SRC}/si_game.c
	${CC} ${CFLAGS} -c $^

si_main.o: ${SRC}/si_main.c
	${CC} ${CFLAGS} -c $^

invaders: ${OBJS}
	${CC} ${CFLAGS} $^ -o $@
	rm -rf ${OBJS}
	@echo "Now you can run the game. Enjoy! :>"
