# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nadesjar <dracken24@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/31 11:43:06 by nadesjar          #+#    #+#              #
#    Updated: 2022/04/29 11:02:18 by nadesjar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

BOLD		= "\033[1m"
RESET		= "\033[0m"
LIGHT_RED	= "\033[91m"
LIGHT_GREEN	= "\033[92m"
LIGHT_CYAN	= "\033[96m"
PURPLE		= "\x1b[94m"

MATH 		= math/
MEM_A		= mem_alloc/
LST			= lst/
STR			= str/
MEM_M		= mem_move/
IS			= is/
ATOI		= atoitoa/

SRCS 		= $(MATH)ft_ultimate_range.c $(MATH)ft_putnbr.c $(MATH)ft_range.c $(MATH)ft_swap.c \
			$(MATH)ft_rev_int_tab.c $(MATH)ft_nbrlen.c $(MATH)ft_putnbr_fd.c $(MATH)ft_swap.c \
			$(MATH)ft_p_or_imp.c $(MATH)ft_array_len.c \
			$(MEM_A)ft_bzero.c $(MEM_A)ft_calloc.c \
			$(LST)ft_lstmap.c $(LST)ft_lstiter.c $(LST)ft_lstclear.c $(LST)ft_lstdelone.c \
			$(LST)ft_lstadd_back.c $(LST)ft_lstlast.c $(LST)ft_lstsize.c $(LST)ft_lstadd_front.c \
			$(LST)ft_lstnew.c \
			$(STR)ft_strlen.c $(STR)ft_strlcpy.c $(STR)ft_strlcat.c $(STR)ft_strrchr.c \
			$(STR)ft_strncmp.c  $(STR)ft_strnstr.c $(STR)ft_strtrim.c $(STR)ft_strmapi.c \
			$(STR)ft_striteri.c $(STR)ft_strdup.c $(STR)ft_substr.c $(STR)ft_strjoin.c \
			$(STR)ft_strcat.c $(STR)ft_putchar_fd.c $(STR)ft_putstr_fd.c $(STR)ft_toupper.c \
			$(STR)ft_tolower.c $(STR)ft_strmapi.c $(STR)ft_striteri.c $(STR)ft_putendl_fd.c \
			$(STR)ft_strchr.c $(STR)ft_split.c $(STR)ft_strchr_bool.c \
			$(MEM_M)ft_memset.c $(MEM_M)ft_memmove.c $(MEM_M)ft_memcmp.c \
			$(MEM_M)ft_memcpy.c \
			$(IS)ft_isalpha.c $(IS)ft_isdigit.c $(IS)ft_isalnum.c $(IS)ft_isascii.c \
			$(IS)ft_isprint.c \
			$(ATOI)ft_atoi.c $(ATOI)ft_itoa.c $(ATOI)ft_atoi_base.c \


OBJ			= $(SRCS:%c=%o)

CC			= gcc

CFLAGS		= -Wall -Werror -Wextra

NAME		= libft.a

all: $(NAME)

$(NAME): $(OBJ)
	@echo $(PURPLE)"LA LIBFT SE COMPILE COMME UNE GRANDE..."$(RESET)
	ar -rcs $(NAME) $(OBJ)
	@echo $(PURPLE)"LIBFT READY FOR NEXT !!!"$(RESET)

gitp:
	@(git add .)
	@(git commit -m "nadesjar42")
	@(git push)

clean:
	rm -f $(OBJ) $(BONUSOBJ)

fclean: clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
