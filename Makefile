NAME = rt
CC = gcc
FLAGS = -Wall -Wextra
FLAGS2 = -L libmath -lmath -L libft -lft -L libimages -limages -L librainbow -lrainbow -lxml2 -lm -lz -lSDL2 -lSDL2_image -framework OpenCL
INC = rt.h objects.h types.h cl_struct.h
INCLUDE = $(INC:%.h=include/%.h)
SRC =	rt.c error.c flags.c hooks.c loop.c window.c\
		antialiasing.c cam_rays.c intersection.c\
		calc_rays.c shortcuts.c draw_image.c preview.c\
		textures.c clean.c hooks2.c\
		parsing/parsing.c parsing/ft_inc_prefab.c\
		parsing/ft_pars_prefab.c parsing/prefab_modi.c\
		parsing/pars_cone.c parsing/pars_cylinder.c\
		parsing/pars_pave.c parsing/pars_plan.c\
		parsing/pars_sphere.c parsing/get_float.c\
		parsing/get_cam.c parsing/get_hitbox.c\
		parsing/get_u_char_int.c parsing/get_textures.c\
		parsing/get_other.c parsing/pars_cam.c\
		parsing/pars_light.c parsing/pars_triangle.c\
		parsing/char_pref.c parsing/pref_modi_func.c parsing/modi_size_anex.c\
		parsing/init_pars.c\
		colors_efect.c
OBJ = $(SRC:%.c=src/%.o)
INCLUDES = -I include -I libft/include -I libmath/include -I libimages/include -I librainbow/include

.PHONY: all clean fclean re norme push libs

all: $(NAME)

%.o: %.c $(INCLUDE)
	@echo "\033[38;5;204mmaking $@\033[0m"
	@$(CC) $(FLAGS) $(INCLUDES) -o $@ -c $<

libs:
	@echo "\033[38;5;14m\c"
	@make -C libft libft.a
	@echo "\033[0m\c"
	@echo "\033[38;5;14m\c"
	@make -C libmath libmath.a
	@echo "\033[0m\c"
	@echo "\033[38;5;14m\c"
	@make -C libimages libimages.a
	@echo "\033[0m\c"
	@echo "\033[38;5;14m\c"
	@make -C librainbow librainbow.a
	@echo "\033[0m\c"

~/.brew/lib/libSDL2.a:
	@brew install sdl2

~/.brew/lib/libxml2.a:
	@brew install libxml2
	@ln -sf ~/.brew/Cellar/libxml2/2.9.4.3/lib/libxml2.a ~/.brew/lib/libxml2.a
	@ln -sf ~/.brew/Cellar/libxml2/2.9.4.3/lib/libxml2.dylib ~/.brew/lib/libxml2.dylib
	@ln -sf ~/.brew/Cellar/libxml2/2.9.4.3/include/libxml2/libxml ~/.brew/include/libxml

$(NAME): ~/.brew/Cellar/libxml2/2.9.4_3/lib/libxml2.a ~/.brew/lib/libSDL2.a libs $(OBJ)
	@export C_INCLUDE_PATH=/usr/local/include:~/.brew/include
	@export LIBRARY_PATH=/usr/local/lib:~/.brew/lib
	@echo "\033[38;5;196mmaking $@\033[0m"
	@$(CC) $(FLAGS) -o $(NAME) $(OBJ) $(FLAGS2)

clean:
	@make -C libft clean
	@make -C libmath clean
	@make -C libimages clean
	@make -C librainbow clean
	@rm -f $(OBJ)
	@echo "\033[38;5;124mobject files removed\033[0m"

fclean: clean
	@make -C libft fclean
	@make -C libmath fclean
	@make -C libimages fclean
	@make -C librainbow fclean
	@rm -f $(NAME)
	@echo "\033[38;5;124m$(NAME) removed\033[0m"

re: fclean all

norme:
	@norminette $(OBJ:%.o=%.c) $(INCLUDE)
	@make -C libft norme
	@make -C libmath norme
	@make -C libimages norme
	@make -C librainbow norme

push:
	git add -A
	git commit -m "Push makefile"
	git push
