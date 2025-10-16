# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jemoreir <jemoreir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/15 20:37:45 by jemoreir          #+#    #+#              #
#    Updated: 2025/07/09 20:15:40 by jemoreir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

SRC= ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memset.c \
	ft_strlen.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
	ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c \
	ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
	ft_strjoin.c ft_strtrim.c ft_putchar_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_split.c ft_lstnew.c\
	ft_lstadd_front.c ft_lstsize.c

OBJECTS = $(SRC:.c=.o)

CC = gcc 
CFLAGS = -Wall -Wextra -Werror -lbsd

all: $(NAME)

$(NAME) : $(OBJECTS)
	@ar rc $(NAME) $(OBJECTS)
	
%.o: %.c libft.h
	@$(CC) $(CFLAGS) -c $< -o $@
clean:
	@/bin/rm -f $(OBJECTS)
	
fclean : clean
	@/bin/rm -f $(NAME)

re: fclean all