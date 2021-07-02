package com.care.root.review.dto;

//상품평 
public class ReviewDTO {

 // 상품평 아이디 
 private String reviewId;

 // 상품평 작성자 아이디 
 private String reviewWriterId;

 // 상품평 제목 
 private String reviewTitle;

 // 상품평 내용 
 private String reviewContent;

 // 상품 평점 
 private int productScore;

 // 상품 게시글 아이디 
 private String productPostId;

 // 상품 등급 
 private String productDegree;
 
 // 상품 파일 1 
 private String productFile1;

 // 상품 파일 2 
 private String productFile2;

 // 상품 파일 3 
 private String productFile3;

 // 상품 파일 4 
 private String productFile4;

 // 상품 파일 5 
 private String productFile5;

 // 상품 이름 
 private String productName;

 public String getReviewId() {
     return reviewId;
 }

 public void setReviewId(String reviewId) {
     this.reviewId = reviewId;
 }

 public String getReviewWriterId() {
     return reviewWriterId;
 }

 public void setReviewWriterId(String reviewWriterId) {
     this.reviewWriterId = reviewWriterId;
 }

 public String getReviewTitle() {
     return reviewTitle;
 }

 public void setReviewTitle(String reviewTitle) {
     this.reviewTitle = reviewTitle;
 }

 public String getReviewContent() {
     return reviewContent;
 }

 public void setReviewContent(String reviewContent) {
     this.reviewContent = reviewContent;
 }

 public int getProductScore() {
     return productScore;
 }

 public void setProductScore(int productScore) {
     this.productScore = productScore;
 }

 public String getProductPostId() {
     return productPostId;
 }

 public void setProductPostId(String productPostId) {
     this.productPostId = productPostId;
 }

 public String getProductFile1() {
     return productFile1;
 }

 public void setProductFile1(String productFile1) {
     this.productFile1 = productFile1;
 }

 public String getProductFile2() {
     return productFile2;
 }

 public void setProductFile2(String productFile2) {
     this.productFile2 = productFile2;
 }

 public String getProductFile3() {
     return productFile3;
 }

 public void setProductFile3(String productFile3) {
     this.productFile3 = productFile3;
 }

 public String getProductFile4() {
     return productFile4;
 }

 public void setProductFile4(String productFile4) {
     this.productFile4 = productFile4;
 }

 public String getProductFile5() {
     return productFile5;
 }

 public void setProductFile5(String productFile5) {
     this.productFile5 = productFile5;
 }

 public String getProductName() {
     return productName;
 }

 public void setProductName(String productName) {
     this.productName = productName;
 }
 
 public String getProductDegree() {
     return productDegree;
 }

 public void setProductDegree(String productDegree) {
     this.productDegree = productDegree;
 }

 // Review 모델 복사
 public void CopyData(ReviewDTO param)
 {
     this.reviewId = param.getReviewId();
     this.reviewWriterId = param.getReviewWriterId();
     this.reviewTitle = param.getReviewTitle();
     this.reviewContent = param.getReviewContent();
     this.productScore = param.getProductScore();
     this.productPostId = param.getProductPostId();
     this.productFile1 = param.getProductFile1();
     this.productFile2 = param.getProductFile2();
     this.productFile3 = param.getProductFile3();
     this.productFile4 = param.getProductFile4();
     this.productFile5 = param.getProductFile5();
     this.productName = param.getProductName();
     this.productDegree = param.getProductDegree();
 }
}