package com.care.root.product.service;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.mybatis.product.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired ProductMapper mapper;
	@Override
	public void productView(Model model, int num) { // 모든 상품 보기
		int allCount = mapper.selectProductCount(); // 상품 총 개수 얻어오기
		int pageLetter = 6; // 한 페이지에 6개 출력
		int repeat = allCount/pageLetter;
		if(allCount%pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("product", mapper.selectAllProductList(start, end));
	}
	public void katView(Model model, String kat, int num) { // 카테고리 보기
		int allCount = mapper.selectKategorieCount(kat);
		int pageLetter = 6; 
		int repeat = allCount/pageLetter;
		if(allCount%pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("product", mapper.selectAllKategorieList(kat, start, end));
	}
	public void recommendAllView(Model model, int num) { // 모든 상품 인기도순 보기
		int allCount = mapper.selectProductCount();
		int pageLetter = 6; 
		int repeat = allCount/pageLetter;
		if(allCount%pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("product", mapper.selectRecommendAllProductList(start, end));
	}
	public void recommendKatView(Model model, String kat, int num) { // 카테고리 인기도순 보기
		int allCount = mapper.selectKategorieCount(kat);
		int pageLetter = 6; 
		int repeat = allCount/pageLetter;
		if(allCount%pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("product", mapper.selectRecommendAllKategorieList(kat, start, end));
	}
	public void priceAllView(Model model, int num) { // 모든 상품 가격순 보기
		int allCount = mapper.selectProductCount();
		int pageLetter = 6; 
		int repeat = allCount/pageLetter;
		if(allCount%pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("product", mapper.selectPriceAllProductList(start, end));
	}
	public void priceKatView(Model model, String kat, int num) { // 카테고리 가격순 보기
		int allCount = mapper.selectKategorieCount(kat);
		int pageLetter = 6; 
		int repeat = allCount/pageLetter;
		if(allCount%pageLetter != 0) {
			repeat += 1;
		}
		int end = num * pageLetter;
		int start = end + 1 - pageLetter;
		model.addAttribute("repeat", repeat);
		model.addAttribute("product", mapper.selectPriceAllKategorieList(kat, start, end));
	}
	public void productDetail(Model model, String productId) { // 상품 상세 보기
		model.addAttribute("productDetail", mapper.selectAllProductDetail(productId));
	}
	public void selectAllReviewList(Model model) { // 상품 상세 보기 창에서 평점들 출력
		model.addAttribute("review", mapper.selectAllReviewList());
	}
	public void updateRecommendCounts(String productId) { // 추천 기능
		mapper.updateRecommendCounts(productId);
	}
	public void selectAllQnaQList(Model model) { // 문의 리스트 출력 (미구현)
		model.addAttribute("qnaq", mapper.selectAllQnaQList());
	}
	public void selectAllQnaAList(Model model) { // 답변 리스트 출력 (미구현)
		model.addAttribute("qnaa", mapper.selectAllQnaAList());
	}
	/*
	public void addQnaQ(String questionWriterId, String questionContent) {
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		mapper.addQnaQ(questionWriterId, questionContent, simpleDateFormat.format(new Date()));
	}
	*/
}
