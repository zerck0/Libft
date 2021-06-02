# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tgeorgin <tgeorgin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/21 14:01:37 by tgeorgin          #+#    #+#              #
#    Updated: 2021/06/02 14:09:31 by tgeorgin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isalpha.c	\
			ft_isdigit.c	\
			ft_tolower.c	\
			ft_toupper.c 	\
			ft_isalnum.c	\
			ft_isascii.c	\
			ft_isprint.c	\
			ft_atoi.c		\
			ft_memset.c		\
			ft_bzero.c		\
			ft_memcpy.c		\
			ft_memccpy.c	\
			ft_memmove.c	\
			ft_memchr.c		\
			ft_memcmp.c		\
			ft_strlen.c		\
			ft_strchr.c 	\
			ft_strncmp.c 	\
			ft_strrchr.c 	\
			ft_strlcpy.c 	\
			ft_strlcat.c 	\
			ft_strnstr.c 	\
			ft_calloc.c 	\
			ft_strdup.c 	\
			ft_putchar_fd.c \
			ft_putstr_fd.c	\
			ft_putendl_fd.c	\
			ft_putnbr_fd.c	\
			ft_split.c		\
			ft_itoa.c		\
			ft_strjoin.c	\
			ft_strmapi.c	\
			ft_substr.c		\
			ft_strtrim.c	\

BONUS = ft_lstnew.c	\
			ft_lstadd_front.c\
			ft_lstsize.c	\
			ft_lstlast.c	\
			ft_lstadd_back.c\
			ft_lstdelone.c	\
			ft_lstclear.c	\
			ft_lstclear.c	\
			ft_lstiter.c	\
			ft_lstmap.c 	\

OBJ = $(SRC:.c=.o) $(BONUS:.c=.o)
all: $(NAME)

$(NAME) : $(SRC)
	@gcc -Wall -Wextra -Werror -c $(SRC) $(BONUS)
	@ar rc $(NAME) $(OBJ)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re
