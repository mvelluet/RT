NAME = libft.a
LIBSO = libft.so
CC = gcc
SRCS = ft_joinf.c\
	   ft_printj.c\
	   number_join.c\
	   string_join.c\
	   ft_printf.c\
	   if_forest.c\
	   number.c\
	   unsigned.c\
	   string.c\
	   char.c\
	   params.c\
	   pointer.c\
	   long.c\
	   other.c\
	   ft_abs.c\
	   ft_alloc_array.c\
	   ft_arraylen.c\
	   ft_atoi.c\
	   ft_atou.c\
	   ft_atof.c\
	   ft_bzero.c\
	   ft_factorial.c\
	   ft_free_array.c\
	   ft_get_all_lines.c\
	   ft_get_next_line.c\
	   ft_isalnum.c\
	   ft_isalpha.c\
	   ft_isascii.c\
	   ft_isdigit.c\
	   ft_isprime.c\
	   ft_isprint.c\
	   ft_itoa.c\
	   ft_lstadd.c\
	   ft_lstdel.c\
	   ft_lstdelone.c\
	   ft_lstiter.c\
	   ft_lstmap.c\
	   ft_lstnew.c\
	   ft_lstswap.c\
	   ft_memalloc.c\
	   ft_memccpy.c\
	   ft_memchr.c\
	   ft_memcmp.c\
	   ft_memcpy.c\
	   ft_memdel.c\
	   ft_memmove.c\
	   ft_memset.c\
	   ft_mod.c\
	   ft_multisplit.c\
	   ft_nbrlen.c\
	   ft_power.c\
	   ft_putchar.c\
	   ft_putchar_fd.c\
	   ft_putendl.c\
	   ft_putendl_fd.c\
	   ft_putnbr.c\
	   ft_putnbr_fd.c\
	   ft_putstr.c\
	   ft_putstr_fd.c\
	   ft_rand.c\
	   ft_realloc.c\
	   ft_showtab.c\
	   ft_showtab_fd.c\
	   ft_sqrt.c\
	   ft_strcat.c\
	   ft_strchr.c\
	   ft_strclr.c\
	   ft_strcmp.c\
	   ft_strcpy.c\
	   ft_strdel.c\
	   ft_strdup.c\
	   ft_strequ.c\
	   ft_striter.c\
	   ft_striteri.c\
	   ft_strjoin.c\
	   ft_strlcat.c\
	   ft_strlen.c\
	   ft_strmap.c\
	   ft_strmapi.c\
	   ft_strncat.c\
	   ft_strncmp.c\
	   ft_strncpy.c\
	   ft_strndup.c\
	   ft_strnequ.c\
	   ft_strnew.c\
	   ft_strnstr.c\
	   ft_strrchr.c\
	   ft_strsplit.c\
	   ft_strstr.c\
	   ft_strsub.c\
	   ft_strtrim.c\
	   ft_tolower.c\
	   ft_toupper.c\
	   ft_vector_add.c\
	   ft_vector_del.c\
	   ft_vector_get.c\
	   ft_vector_iter.c\
	   ft_vector_new.c\
	   ft_vector_printhex.c\
	   ft_vector_resize.c
OBJS = $(SRCS:%.c=src/%.o)
FLAGS = -Wall -Wextra
INCLUDE = include

.PHONY: clean fclean all re norme

all: $(NAME)

$(LIBSO): $(OBJS)
	@echo "\033[38;5;214mmaking $@\033[0m"
	@$(CC) $(FLAGS) -shared -o $(LIBSO) $(OBJS)
	@echo "\033[38;5;214m$@ done\033[0m"

$(NAME): $(OBJS)
	@echo "\033[38;5;214mmaking $@\033[0m"
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "\033[38;5;214m$@ done\033[0m"

%.o: %.c include/libft.h
	@echo "\033[38;5;226mmaking $@\033[0m"
	@$(CC) $(FLAGS) -fPIC -I $(INCLUDE) -o $@ -c $<

clean:
	@rm -f $(OBJS)
	@echo "\033[38;5;45mobject files removed\033[0m"

fclean: clean
	@rm -f $(NAME)
	@rm -f $(LIBSO)
	@echo "\033[38;5;87m$(NAME) removed\033[0m"

norme:
	@norminette $(OBJS:%.o=%.c) $(INCLUDE)

re: fclean all