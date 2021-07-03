package com.care.root.mybatis.product;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.care.root.product.dto.ProductDTO;
import com.care.root.qna.dto.QnaADTO;
import com.care.root.qna.dto.QnaQDTO;
import com.care.root.review.dto.ReviewDTO;

public interface ProductMapper {
	public ArrayList<ProductDTO> selectAllProductList(@Param("s") int start, @Param("e") int end); // 모든 상품 가져오기
	public int selectProductCount(); // 상품 총 개수 가져오기
	public ArrayList<ProductDTO> selectAllKategorieList(@Param("k") String kat, @Param("s") int start, @Param("e") int end); // 선택된 카테고리 모두 가져오기
	public int selectKategorieCount(String kat); // 선택된 카테고리 총 개수 가져오기
	public ArrayList<ProductDTO> selectRecommendAllProductList(@Param("s") int start, @Param("e") int end); // 모든 상품 인기도순 가져오기
	public ArrayList<ProductDTO> selectRecommendAllKategorieList(@Param("k") String kat, @Param("s") int start, @Param("e") int end); // 카테고리 인기도순 가져오기
	public ArrayList<ProductDTO> selectPriceAllProductList(@Param("s") int start, @Param("e") int end); // 모든 상품 가격순 가져오기
	public ArrayList<ProductDTO> selectPriceAllKategorieList(@Param("k") String kat, @Param("s") int start, @Param("e") int end); // 카테고리 가격순 가져오기
	public ProductDTO selectAllProductDetail(@Param("p") String productId); // 상품 상세 보기
	public ReviewDTO selectAllReviewList(); // 상품 상세보기 창에서 평점들 출력
	public void updateRecommendCounts(@Param("p") String productId); // 추천 기능
	public ArrayList<QnaQDTO> selectAllQnaQList(); // 문의 리스트 출력 (미구현)
	public ArrayList<QnaADTO> selectAllQnaAList(); // 답변 리스트 출력 (미구현)
	//public void addQnaQ(@Param("w") String questionWriterId, @Param("c") String questionContent, @Param("t") Date date);
}
