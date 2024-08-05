# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lantonio <lantonio@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/23 09:08:46 by lantonio          #+#    #+#              #
#    Updated: 2024/08/05 12:05:51 by lantonio         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a



SRC			=	ft_printf.c 		\
			 	srcs/ft_itoa.c 		\
				srcs/ft_putchar.c 	\
				srcs/ft_puthex.c 	\
				srcs/ft_putnbr.c 	\
				srcs/ft_putptr.c 	\
				srcs/ft_putstr.c 	\
				srcs/ft_putunsigned.c

OBJS 		= ${SRC:.c=.o}
LIBC 		= ar rcs
CC 			= cc
RM 			= rm -f
CFLAGS 		= -Wall -Wextra -Werror

${NAME}: ${OBJS}
			${LIBC} ${NAME} ${OBJS}

all: ${NAME}

clean:
			${RM} ${OBJS}

fclean: clean
			${RM} ${NAME}
re: fclean all

.PHONY : all clean fclean re