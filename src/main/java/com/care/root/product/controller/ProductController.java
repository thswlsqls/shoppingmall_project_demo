package com.care.root.product.controller;

import java.io.File;
import java.io.FileInputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.product.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired ProductService ps;
	@GetMapping("allview") // 모든 상품 보기
	public String allView(Model model, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.productView(model, num);
		return "product/allView";
	}
	@GetMapping("dogview/{kat}") // 강아지 카테고리 보기
	public String dogView(Model model, @PathVariable String kat, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.katView(model, kat, num);
		return "product/dogView";
	}
	@GetMapping("catview/{kat}") // 고양이 카테고리 보기
	public String catView(Model model, @PathVariable String kat, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.katView(model, kat, num);
		return "product/catView";
	}
	@GetMapping("recommendallview") // 모든 상품 인기도순 보기
	public String recommendAllView(Model model, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.recommendAllView(model, num);
		return "product/recommendAllView";
	}
	@GetMapping("recommenddogview/{kat}") // 강아지 인기도순 보기
	public String recommendDogView(Model model, @PathVariable String kat, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.recommendKatView(model, kat, num);
		return "product/recommendDogView";
	}
	@GetMapping("recommendcatview/{kat}") // 고양이 인기도순 보기
	public String recommendCatView(Model model, @PathVariable String kat, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.recommendKatView(model, kat, num);
		return "product/recommendCatView";
	}
	@GetMapping("priceallview") // 모든 상품 가격순 보기
	public String priceAllView(Model model, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.priceAllView(model, num);
		return "product/priceAllView";
	}
	@GetMapping("pricedogview/{kat}") // 강아지 가격순 보기
	public String priceDogView(Model model, @PathVariable String kat, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.priceKatView(model, kat, num);
		return "product/priceDogView";
	}
	@GetMapping("pricecatview/{kat}") // 고양이 가격순 보기
	public String priceCatView(Model model, @PathVariable String kat, @RequestParam(value="num", required=false, defaultValue="1") int num) {
		ps.priceKatView(model, kat, num);
		return "product/priceCatView";
	}
	@GetMapping("productdetail/{productId}") // 상품 상세 보기
	public String productDetail(Model model, @PathVariable String productId) {
		ps.productDetail(model, productId);
		ps.selectAllReviewList(model);
		//ps.selectAllQnaQList(model);
		//ps.selectAllQnaAList(model);
		return "product/productDetail";
	}
	@GetMapping("download") // 상품 이미지 가져오기
	public void download(@RequestParam("file") String fileName,
									HttpServletResponse response) 
											throws Exception {
		response.addHeader("Content-disposition", "attachment; fileName="+fileName);
		File file = new File("c:\\kgitbank\\image_repo\\"+fileName);
		FileInputStream in = new FileInputStream(file);
		FileCopyUtils.copy(in, response.getOutputStream());
		in.close();
	}
	@GetMapping("updaterecommend/{productId}") // 추천하고 상품 상세 창 다시 띄우기
	public String updaterecommend(Model model, @PathVariable String productId) {
		ps.updateRecommendCounts(productId);
		ps.productDetail(model, productId);
		ps.selectAllReviewList(model);
		//ps.selectAllQnaQList(model);
		//ps.selectAllQnaAList(model);
		return "product/productDetail";
	}
	@PostMapping("addqnaq/{productId}") // 문의하기 (에러 해결 중 입니다)
	public String addQnaQ(Model model, @PathVariable String productId, @RequestParam String writerId, @RequestParam String questionContent) {
		ps.productDetail(model, productId);
		ps.selectAllReviewList(model);
		//ps.addQnaQ(writerId, questionContent);
		//ps.selectAllQnaQList(model);
		//ps.selectAllQnaAList(model);
		return "product/productDetail";
	}
}
