/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abamksa <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/05 16:14:51 by abamksa           #+#    #+#             */
/*   Updated: 2023/11/21 10:11:25 by abamksa          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t count, size_t n)
{
	void	*buf;

	if (count && n && count > (ULONG_MAX / n))
		return (NULL);
	buf = malloc(count * n);
	if (!buf)
		return (NULL);
	ft_bzero(buf, count * n);
	return (buf);
}
