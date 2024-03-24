NAME = libft.a

CC = cc

CFLAGS = -Werror -Wextra -Wall

SRCS = ft_putnbr_fd.c ft_putendl_fd.c ft_putstr_fd.c ft_putchar_fd.c \
	ft_striteri.c ft_strmapi.c ft_itoa.c ft_split.c ft_strtrim.c \
	ft_strjoin.c ft_substr.c ft_strdup.c ft_calloc.c ft_atoi.c \
	ft_strnstr.c ft_memcmp.c ft_memchr.c ft_strncmp.c ft_strrchr.c \
	ft_strchr.c ft_tolower.c ft_toupper.c ft_strlcat.c ft_strlcpy.c \
	ft_memmove.c ft_memcpy.c ft_bzero.c ft_memset.c ft_strlen.c \
	ft_isprint.c ft_isascii.c ft_isalnum.c ft_isdigit.c ft_isalpha.c \

BSRCS = ft_lstmap_bonus.c ft_lstiter_bonus.c ft_lstclear_bonus.c \
	ft_lstdelone_bonus.c ft_lstadd_back_bonus.c ft_lstlast_bonus.c \
	ft_lstsize_bonus.c ft_lstadd_front_bonus.c ft_lstnew_bonus.c \

OBJS = $(SRCS:.c=.o)

BOBJS = $(BSRCS:.c=.o)

all: $(NAME)

.c.o:
	$(CC) $(CFLAGS) -c $<
	ar rc $(NAME) $@

$(NAME): $(OBJS)

clean:
	rm -f $(OBJS) $(BOBJS)
fclean: clean
	rm -f $(NAME)

re: fclean all

bonus: $(BOBJS)

.PHONY: all clean fclean re bonus
