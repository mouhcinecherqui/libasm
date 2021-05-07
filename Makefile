NAME=   libasm.a
SRC=  ft_srtlen.s
OBJ= $(SRC:.c=.o)
FLG= -fmacho64
all: $(NAME)
comp= nasm
$(NAME): $(OBJ)
    ar r $(NAME) $(OBJ)
    ranlib $(NAME)
%.o: %.s
    @$(COMP) $(FLG)
clean:
    /bin/rm -f *.o
fclean: clean
    /bin/rm -f $(NAME)
re: fclean all