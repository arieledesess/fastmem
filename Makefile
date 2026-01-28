NAME=fastmem
ASM=nasm
AR=ar
CFLAGS=-f elf64

SRC=$(wildcard src/*.asm)
OBJ=$(patsubst src/%.asm,build/%.o,$(SRC))

all: build/lib$(NAME).a

build:
	mkdir -p build

build/%.o: src/%.asm | build
	$(ASM) $(CFLAGS) $< -o $@

build/lib$(NAME).a: $(OBJ)
	$(AR) rcs $@ $^

clean:
	rm -rf build
