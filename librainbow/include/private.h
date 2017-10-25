/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   private.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pribault <pribault@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/27 16:56:46 by pribault          #+#    #+#             */
/*   Updated: 2017/09/29 15:41:40 by pribault         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PRIVATE_H
# define PRIVATE_H

# include "libft.h"
# include "types.h"
# include "libimages.h"
# include "libmath.h"
# include <sys/time.h>
# include <SDL2/SDL.h>
# include <SDL2/SDL_image.h>

typedef struct		s_pixel
{
	t_vec2			pos;
	t_color			color;
}					t_pixel;

typedef struct		s_win
{
	SDL_Window		*win;
	SDL_Renderer	*render;
	SDL_Event		events;
	char			*name;
	int				w;
	int				h;
}					t_win;

t_win				*new_window(char *title, int w, int h);
void				delete_window(t_win **win);

t_uint				get_fps(void);
void				set_fps(t_uint fps);

char				*get_version(void);
t_uint16			get_width(t_win *win);
t_uint16			get_height(t_win *win);
char				*get_title(t_win *win);

t_img				*new_img(int w, int h);

t_color				new_color(t_uchar r, t_uchar g, t_uchar b, t_uchar a);

void				pixel_put(t_img *img, t_pixel *p);
void				draw_line(t_img *img, t_pixel *a, t_pixel *b);
void				draw_triangle(t_img *img, t_pixel *a, t_pixel *b,
					t_pixel *c);
void				draw_polygone(t_img *img, t_pixel *p, int n);

#endif
