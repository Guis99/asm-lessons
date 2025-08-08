#!/bin/bash
nasm -f elf64 mul_locals_scratch.asm -o mul_locals.o
g++ print_mul_locals.cpp mul_locals.o -o mul_with_asm.out -Ddm
