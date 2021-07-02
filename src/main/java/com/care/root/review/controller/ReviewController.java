package com.care.root.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("review")
public class ReviewController {

	@GetMapping("/createReview")
	public String createReview() {
		return "eunbin/createReview";
	}

}
