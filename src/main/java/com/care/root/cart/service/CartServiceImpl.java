package com.care.root.cart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.cart.dto.CartDTO;
import com.care.root.mybatis.cart.CartMapper;
import com.care.root.mybatis.review.ReviewMapper;

@Service
public class CartServiceImpl implements CartService {
	@Autowired CartMapper mapper;

	@Override
	public String addUserCart(MultipartHttpServletRequest mul, 
														 HttpServletRequest request, 
														 String orderProductId) {
		CartDTO cDto = new CartDTO();
		
		
		// TODO Auto-generated method stub
		return null;
	}
	
}
