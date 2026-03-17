# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/15 20:37:45 by jemoreir          #+#    #+#              #
#    Updated: 2026/03/17 16:00:03 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a
SRC_DIR = src
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJECTS = $(SRC:.c=.o)

CC = cc 
CFLAGS = -Wall -Wextra -Werror -Iinclude

all: $(NAME)

$(NAME) : $(OBJECTS)
	@ar rc $(NAME) $(OBJECTS)
	
%.o: %.c include/libft.h
	@$(CC) $(CFLAGS) -c $< -o $@
clean:
	@rm -f $(OBJECTS)
fclean : clean
	@rm -f $(NAME)
re: fclean all

.PHONY: all clean fclean re