package com.care.root.wish.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("wish")
public class WishController {

	@GetMapping("/readWishes")
	public String createReview() {
		return "eunbin/readWishes";
	}
}
