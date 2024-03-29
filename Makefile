NAME		=	libft.a

CHECKERS 	=	./src/checkers
CONVERSORS	=	./src/conversors
MEMORY		=	./src/memory
STRING		=	./src/string
WRITERS		=	./src/writers
GNL			=	./src/gnl

SRCS		=	$(CHECKERS)/ft_isalnum.c		\
				$(CHECKERS)/ft_isalpha.c		\
				$(CHECKERS)/ft_isascii.c		\
				$(CHECKERS)/ft_isdigit.c		\
				$(CHECKERS)/ft_isprint.c		\
				$(CONVERSORS)/ft_atoi.c			\
				$(CONVERSORS)/ft_itoa.c			\
				$(CONVERSORS)/ft_tolower.c		\
				$(CONVERSORS)/ft_toupper.c		\
				$(MEMORY)/ft_bzero.c			\
				$(MEMORY)/ft_calloc.c			\
				$(MEMORY)/ft_memchr.c			\
				$(MEMORY)/ft_memcmp.c			\
				$(MEMORY)/ft_memcpy.c			\
				$(MEMORY)/ft_memmove.c			\
				$(MEMORY)/ft_memset.c			\
				$(STRING)/ft_split.c			\
				$(STRING)/ft_strdup.c			\
				$(STRING)/ft_strjoin.c			\
				$(STRING)/ft_strlcpy.c			\
				$(STRING)/ft_strmapi.c			\
				$(STRING)/ft_strnstr.c			\
				$(STRING)/ft_strtrim.c			\
				$(STRING)/ft_strchr.c 			\
				$(STRING)/ft_striteri.c			\
				$(STRING)/ft_strlcat.c			\
				$(STRING)/ft_strlen.c			\
				$(STRING)/ft_strncmp.c			\
				$(STRING)/ft_strrchr.c			\
				$(GNL)/get_next_line.c			\
				$(GNL)/get_next_line_utils.c	\
				$(STRING)/ft_substr.c			\
				$(WRITERS)/ft_putchar_fd.c		\
				$(WRITERS)/ft_putendl_fd.c		\
				$(WRITERS)/ft_putnbr_fd.c		\
				$(WRITERS)/ft_putstr_fd.c	



OBJS		= $(SRCS:%.c=%.o)

HEADER		= -I./includes

CFLAGS		= -Wall -Wextra -Werror

#colors
GRENN		= \033[0;32m
YELLOW		= \033[0;33m
BLUE		= \033[0;34m
MAGENTA		= \033[0;35m
CYAN		= \033[0;36m
RESET		= \033[0m

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)
	@echo "\n $(CYAN)$(NAME): $(GRENN)Done!"
	@echo -n "$(RESET)"

%.o: %.c
	@printf "$(YELLOW)Generating $(CYAN)$(NAME) $(YELLOW)objects... %-33.33s\r" $@
	gcc -c $< -o $@ $(CFLAGS) -g $(HEADER)

clean:
	@rm -fr $(OBJS)

fclean:		clean
	@rm -fr ${NAME}

re: fclean all