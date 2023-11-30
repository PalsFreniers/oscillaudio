CC = gcc
LD = gcc
NAME = oscillaudio
SRCS = main.c
HEADER =
OBJS = $(SRCS:.c=.o)
CFLAGS = -Wall -Wextra -Werror -O3 #-g
LIBS = -lraylib
LDFLAGS = $(LIBS)

$(NAME): $(OBJS)
	$(LD) -o $(NAME) $(OBJS) $(LDFLAGS)
	@echo "$(NAME) is compiled"

all: $(NAME)

%.o : %.c $(HEADER)
	$(CC) $(CFLAGS) $< -c -o $@

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) fcleaned"

clean:
	@rm -f $(OBJS)
	@echo "$(NAME) cleaned"

re: fclean all

run: all
	./$(NAME)

.PHONY: all fclean clean re run
