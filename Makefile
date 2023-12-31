# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abamksa <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/30 19:43:00 by abamksa           #+#    #+#              #
#    Updated: 2023/12/04 13:25:13 by abamksa          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

AR = ar crs

CC = gcc
CFLAGS = -Wall -Wextra -Werror

RM = rm -f

SRCS_P =	ft_memset.c	 		\
			ft_bzero.c	 		\
	        ft_memcpy.c		 	\
	        ft_memcpy.c 		\
			ft_memmove.c 		\
			ft_memchr.c	 		\
			ft_memcmp.c	 		\
			ft_calloc.c	 		\
			ft_strlen.c	 		\
			ft_strlcpy.c 		\
			ft_strlcat.c 		\
			ft_strchr.c  		\
			ft_strrchr.c 		\
			ft_striteri.c		\
			ft_strncmp.c 		\
			ft_strnstr.c 		\
			ft_strdup.c	 		\
			ft_isdigit.c 		\
			ft_atoi.c			\
			ft_isalpha.c 		\
			ft_isalnum.c 		\
			ft_isascii.c 		\
			ft_isprint.c 		\
			ft_toupper.c		\
			ft_tolower.c		\
			ft_substr.c     	\
			ft_strjoin.c	  	\
			ft_strtrim.c	  	\
			ft_split.c	    	\
			ft_itoa.c	      	\
			ft_strmapi.c		\
			ft_putchar_fd.c 	\
			ft_putstr_fd.c		\
			ft_putendl_fd.c		\
			ft_putnbr_fd.c

SRCS_B = 	ft_lstnew.c			\
			ft_lstadd_front.c	\
			ft_lstsize.c		\
			ft_lstlast.c		\
			ft_lstadd_back.c	\
			ft_lstdelone.c		\
			ft_lstclear.c		\
			ft_lstiter.c		\
			ft_lstmap.c

OBJS_P = $(SRCS_P:.c=.o)

OBJS_B = $(SRCS_B:.c=.o)

all: $(NAME)

$(NAME): $(OBJS_P)
	$(AR) $@ $?

bonus: $(OBJS_B)
	$(AR) $(NAME) $?

clean :
	$(RM) $(OBJS_P) $(OBJS_B)

fclean : clean
	$(RM) $(NAME)

re : fclean all
