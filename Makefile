NAME = minishell

SRCS = main.c

OBJS = $(SRCS:.c=.o)

LIBFT = libft/libft.a

CFLAGS = -Wall -Wextra -Werror #-g -fsanitize=address  

CC = gcc

$(NAME):	$(LIBFT) $(OBJS)
		$(CC) $(CFLAGS) -o $(NAME) $(OBJS) -Llibft -lft

$(LIBFT):
	make -C libft

all:	$(NAME)

clean:
		cd libft && make clean
		rm -rf $(OBJS)

fclean:		clean
		cd libft && make fclean
		rm -rf $(NAME)

re:		fclean 	all