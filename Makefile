SRCS_LIBFT	= ft_memset.c		\
		  ft_strlen.c		\
		  ft_strchr.c		\
		  ft_atoi.c		\
		  ft_itoa.c		\
		  ft_uitoa.c		\
		  ft_strcpy.c		\
		  ft_strncpy.c		\
		  ft_memalloc.c		\
		  ft_strtoupper.c	\
		  ft_bzero.c		\
		  ft_isdigit.c		\
		  ft_toupper.c		\

SRCS		= ft_printf.c		\
		  parse.c		\
		  print.c		\
		  util.c		\
		  mode.c		\
		  flags.c		\
		  padding.c		\
		  convert.c		\
		  sort.c		\

OBJS_LIBFT	= $(addprefix libft/, $(SRCS_LIBFT:.c=.o))


OBJS		= $(addprefix srcs/, $(SRCS:.c=.o))

HEADER		= -I include/

CC			= cc

CFLAGS		= -Wall -Wextra -Werror

RM			= rm -f

NAME		= libftprintf.a

AR			= ar rcs

%.o: %.c
	$(CC) $(CFLAGS) $(HEADER) -c $< -o $@

$(NAME):	$(OBJS) $(OBJS_LIBFT)
	$(AR) $@ $^

all:		$(NAME)

bonus:		all

clean:
	$(RM) $(OBJS) $(OBJS_LIBFT)

fclean:		clean
	$(RM) $(NAME)

re:		fclean all

.PHONY:		all bonus clean fclean re
