package com.care.root.mybatis.cart;

import com.care.root.cart.dto.CartDTO;

public interface CartMapper {
	public int insertUserCart(CartDTO dto);
}
