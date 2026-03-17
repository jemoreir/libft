# libft

A custom implementation of essential C standard library functions, developed as part of the 42 Lisboa curriculum.

## Overview

The goal of this project is to recreate a set of standard C library functions from scratch, building a solid understanding of low-level programming and memory management.

This library serves as a foundation for future projects and includes additional utility functions to support file descriptor output and common operations.

## Implementation

This project includes reimplementations of functions from:

- `<ctype.h>`  
- `<string.h>`  
- `<stdlib.h>`  

As well as:

- file descriptor output functions  
- string and memory utilities  

All functions are written in pure C without relying on external libraries.

## Key Concepts

- memory allocation and management  
- pointer manipulation  
- string operations  
- defensive programming  
- code reusability  

## Features

- Reimplementation of standard C functions  
- File descriptor utilities (`_fd`)  
- Consistent naming convention (`ft_`)  
- Modular and reusable code  
- Robust input handling  

## Project Structure

libft/
├── include/
│   └── libft.h
├── src/
├── Makefile
└── README.md

## Usage

### Compilation

make

This will generate:

libft.a

### Example

```c
#include "libft.h"
```

Compile with:

```bash
gcc main.c -L. -lft
```

## Notes

- All functions are prefixed with `ft_` to avoid conflicts with standard library functions  
- This library is used as a base for projects such as:
  - `ft_printf`  
  - `get_next_line`  
  - `minishell`  

- The Makefile in this repository uses wildcard (`$(wildcard src/*.c)`) to automatically include source files.  
  This approach improves maintainability and scalability.

- For academic evaluation at 42, a version without wildcard was used to comply with project rules.

## Development Notes

This project focuses on understanding core C concepts, including:

- how standard library functions work internally  
- manual memory management  
- writing clean and reusable code  

It represents a key step in transitioning from basic programming to structured and modular development.

## Use of AI

AI tools were used as a support resource during the development of this project, mainly for:

- clarifying low-level programming concepts  
- improving documentation quality (README)  
- reviewing implementation approaches  

All core functions and logic were implemented independently.

## Author

Jean Henrique Moreira  
42 Lisboa  

Learning low-level. Thinking long-term.