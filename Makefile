# Compiler
CC      ?= gcc14
CFLAGS  ?= -Wall -Wextra -O2 -std=c17

# Directories
SRCDIR  := src
INCDIR  := include
BINDIR  := bin

# Target
TARGET  := myproject

# Sources
SRCS    := $(SRCDIR)/main.c
OBJS    := $(SRCS:.c=.o)

# Default target
all: $(BINDIR)/$(TARGET)

# Link
$(BINDIR)/$(TARGET): $(OBJS)
    mkdir -p $(BINDIR)
    $(CC) $(CFLAGS) -I$(INCDIR) $^ -o $@

# Compile
%.o: %.c
    $(CC) $(CFLAGS) -I$(INCDIR) -c $< -o $@

# Clean
clean:
    rm -f $(OBJS)
    rm -rf $(BINDIR)

.PHONY: all clean