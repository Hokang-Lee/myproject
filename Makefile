# Compiler
CC ?= gcc14
CFLAGS ?= -Wall -Wextra -O2 -std=c17

# Directories
SRCDIR = src
INCDIR = include
BINDIR = bin

# Target
TARGET = myproject

# Sources
SRCS = ${SRCDIR}/main.c
OBJS = ${SRCS:.c=.o}

all: ${BINDIR}/${TARGET}

${BINDIR}/${TARGET}: ${OBJS}
	@mkdir -p ${BINDIR}
	${CC} ${CFLAGS} -I${INCDIR} ${OBJS} -o ${BINDIR}/${TARGET}

.c.o:
	${CC} ${CFLAGS} -I${INCDIR} -c $< -o $@

clean:
	rm -f ${OBJS}
	rm -rf ${BINDIR}

.PHONY: all clean
