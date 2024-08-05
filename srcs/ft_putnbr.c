/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lantonio <lantonio@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/23 16:50:42 by lantonio          #+#    #+#             */
/*   Updated: 2024/08/05 12:07:39 by lantonio         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

int	ft_putnbr(int nbr)
{
	int		len;
	char	*str;

	str = ft_itoa(nbr);
	len = ft_putstr(str);
	free(str);
	return (len);
}
