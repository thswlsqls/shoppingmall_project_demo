package com.care.root.cart.service;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.cart.dto.CartDTO;
import com.care.root.member.dto.MemberDTO;
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
		HttpSession session = request.getSession();
		MemberDTO m = (MemberDTO) session.getAttribute("userSessionData");
		String memberIdx = m.getMemberIdx();
		cDto.setCartId(UUID.randomUUID().toString().replace("-", ""));
		cDto.setCartProductCounts(0);
		cDto.setCartProductFile1("");
		cDto.setCartProductId("");
		cDto.setMemberId(memberIdx);
		// TODO Auto-generated method stub
		return null;
	}
	
}
