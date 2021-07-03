package com.care.root.cart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface CartService {
	public String addUserCart(MultipartHttpServletRequest mul,
														  HttpServletRequest request,
														  String orderProductId);
	
}
