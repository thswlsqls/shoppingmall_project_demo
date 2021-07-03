package com.care.root.product.dto;

// 상품 
public class ProductDTO {
	    // 상품 아이디 
	    private String productId;

	    // 상품 카테고리 
	    private String productCategory;

	    // 상품 브랜드 
	    private String productBrand;

	    // 상품 이름 
	    private String productName;

	    // 상품 가격 
	    private int productPrice;

	    // 상품 할인율 
	    private int productDiscount;

	    // 상품 판매자 아이디 
	    private String productSellerId;

	    // 상품 추천 개수 
	    private int productRecommendCounts;

	    // 상품 재고 개수 
	    private int productStockCounts;

//	    // 상품 평점
//	    private int productScore;
	    
	    // 상품 파일 1 
	    private String productFile1;

	    public String getProductId() {
	        return productId;
	    }

	    public void setProductId(String productId) {
	        this.productId = productId;
	    }

	    public String getProductCategory() {
	        return productCategory;
	    }

	    public void setProductCategory(String productCategory) {
	        this.productCategory = productCategory;
	    }

	    public String getProductBrand() {
	        return productBrand;
	    }

	    public void setProductBrand(String productBrand) {
	        this.productBrand = productBrand;
	    }

	    public String getProductName() {
	        return productName;
	    }

	    public void setProductName(String productName) {
	        this.productName = productName;
	    }

	    public int getProductPrice() {
	        return productPrice;
	    }

	    public void setProductPrice(int productPrice) {
	        this.productPrice = productPrice;
	    }

	    public int getProductDiscount() {
	        return productDiscount;
	    }

	    public void setProductDiscount(int productDiscount) {
	        this.productDiscount = productDiscount;
	    }

	    public String getProductSellerId() {
	        return productSellerId;
	    }

	    public void setProductSellerId(String productSellerId) {
	        this.productSellerId = productSellerId;
	    }

	    public int getProductRecommendCounts() {
	        return productRecommendCounts;
	    }

	    public void setProductRecommendCounts(int productRecommendCounts) {
	        this.productRecommendCounts = productRecommendCounts;
	    }

	    public int getProductStockCounts() {
	        return productStockCounts;
	    }

	    public void setProductStockCounts(int productStockCounts) {
	        this.productStockCounts = productStockCounts;
	    }

	    public String getProductFile1() {
	        return productFile1;
	    }

	    public void setProductFile1(String productFile1) {
	        this.productFile1 = productFile1;
	    }

	    // Product 모델 복사
	    public void CopyData(ProductDTO param)
	    {
	        this.productId = param.getProductId();
	        this.productCategory = param.getProductCategory();
	        this.productBrand = param.getProductBrand();
	        this.productName = param.getProductName();
	        this.productPrice = param.getProductPrice();
	        this.productDiscount = param.getProductDiscount();
	        this.productSellerId = param.getProductSellerId();
	        this.productRecommendCounts = param.getProductRecommendCounts();
	        this.productStockCounts = param.getProductStockCounts();
	        this.productFile1 = param.getProductFile1();
	    }
	}