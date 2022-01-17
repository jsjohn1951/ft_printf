# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wismith <wismith@42ABUDHABI.AE>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/10 13:37:27 by wismith           #+#    #+#              #
#    Updated: 2022/01/17 17:33:45 by wismith          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

LIST = ft_printf.c assets/ft_put_u.c assets/ft_put.c assets/ft_puthex.c assets/ft_putptr.c assets/ft_int_min.c

OBJ = $(LIST:.c=.o)

FLAGS = -Wall -Werror -Wextra

all : $(NAME)

$(NAME) : $(OBJ)
	gcc -c $(FLAGS) $(LIST)
	ar -rc $(NAME) $(OBJ)

%.o : %.c
	gcc $(FLAGS) -c $< -o $(<:%.c=%.o)

clean:
	rm -f $(OBJ)
	rm -f ./*.o

fclean: clean
	rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re