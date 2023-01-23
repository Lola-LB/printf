/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lle-bret <lle-bret@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/25 20:08:41 by lle-bret          #+#    #+#             */
/*   Updated: 2022/11/16 12:43:49 by lle-bret         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <string.h>
# include <strings.h>
# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>
# include <inttypes.h>

void		*ft_memset(void *b, int c, size_t len);
void		ft_bzero(void *s, size_t n);
int			ft_strlen(char *str);
int			ft_toupper(int c);
int			ft_isdigit(int c);
char		*ft_strchr(const char *s, int c);
int			ft_atoi(const char *str);
char		*ft_strcpy(char *dst, const char *src);
char		*ft_strncpy(char *dst, const char *src, size_t len);
char		*ft_itoa(intmax_t n, int base);
char		*ft_uitoa(intmax_t n, int base);
char		*ft_strtoupper(char *str);
void		*ft_memalloc(size_t size);

#endif
