/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libimages.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pribault <pribault@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/23 22:42:18 by pribault          #+#    #+#             */
/*   Updated: 2017/09/14 05:45:54 by pribault         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBIMAGES_H
# define LIBIMAGES_H

# include <zlib.h>
# include "libft.h"
# include "types.h"
# include "SDL2/SDL.h"

typedef SDL_Color	t_color;

typedef SDL_Surface	t_img;

t_img			*import_bmp(char *file);
void			export_bmp(t_img *img, char *file);

t_img			*import_png(char *file);

char			endian(void *ptr, size_t n);
void			invert_image(t_img *img);

#endif
