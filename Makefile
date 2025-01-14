SRCS = ft_isupper.c ft_islower.c ft_isalpha.c ft_isdigit.c ft_isalnum.c\
ft_isascii.c ft_isprint.c ft_isspace.c ft_strlen.c ft_memset.c ft_bzero.c\
ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strnlen.c ft_strlcat.c ft_toupper.c\
ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c\
ft_strnstr.c ft_memccpy.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c\
ft_strjoin.c ft_strtrim.c ft_split.c ft_strrev.c ft_abs.c ft_strmapi.c\
ft_striteri.c ft_striter.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c\
ft_putnbr_fd.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c\
get_next_line.c ft_itoa.c ft_utoa.c ft_ultoa.c ft_printf.c ft_vfprintf.c\
ft_vfprintf_utils.c
OBJS = $(SRCS:.c=.o)

HDRS = libft.h get_next_line.h ft_printf.h

CC = cc
FLAGS = -Wall -Werror -Wextra
CRTLB = ar rc

 
NAME = libft.a

all: $(NAME)

%.o: %.c $(HDRS)
	$(CC) $(FLAGS) -c $< -o $@
	
$(NAME):	$(OBJS)
	$(CRTLB) $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
