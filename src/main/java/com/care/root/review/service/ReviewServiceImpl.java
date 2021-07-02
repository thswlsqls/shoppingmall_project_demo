package com.care.root.review.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.root.board.service.BoardFileService;
import com.care.root.board.service.BoardFileServiceImpl;
import com.care.root.review.dto.ReviewDTO;

public class ReviewServiceImpl implements ReviewService{

	@Override
	public String reviewSave(MultipartHttpServletRequest mul, 
													  HttpServletRequest request) {
		
		ReviewDTO dto = new ReviewDTO();
		HttpSession session = request.getSession();
//		dto.setReviewTitle(mul.getParameter("title"));
//		dto.setProductScore(mul.getParameter("score"));
//		dto.setProductDegree(mul.getParameter("degree"));
//		dto.setReviewContent(mul.getParameter("content"));

//		dto.setReviewWriterId();
//		dto.setProductPostId();
		
		MultipartFile file = mul.getFile("image_file_name");
		ReviewFileService bfs = new ReviewFileServiceImpl();
		
		// TODO Auto-generated method stub
		return null;
	}

}
