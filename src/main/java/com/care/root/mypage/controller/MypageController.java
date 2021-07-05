package com.care.root.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mypage")
public class MypageController {
	/* 마이페이지 컨트롤러 */
	@GetMapping("mypage")
	public String mypage() {
		return "mypage/mypage";
	}
	
	@GetMapping("cart")
	public String cart() {
		return "mypage/cart";
	}
}
