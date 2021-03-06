package com.care.root.cart.dto;

//장바구니 
public class CartDTO {

 // 장바구니 아이디 
 private String cartId;

 // 회원 아이디 
 private String memberId;//memberid

 // 장바구니 상품 아이디 
 private String cartProductId;

 // 장바구니 상품 개수 
 private int cartProductCounts;

 // 장바구니 상품 파일 1 
 private String cartProductFile1;

 public String getCartId() {
     return cartId;
 }

 public void setCartId(String cartId) {
     this.cartId = cartId;
 }

 public String getMemberId() {
     return memberId;
 }

 public void setMemberId(String memberId) {
     this.memberId = memberId;
 }

 public String getCartProductId() {
     return cartProductId;
 }

 public void setCartProductId(String cartProductId) {
     this.cartProductId = cartProductId;
 }

 public int getCartProductCounts() {
     return cartProductCounts;
 }

 public void setCartProductCounts(int cartProductCounts) {
     this.cartProductCounts = cartProductCounts;
 }

 public String getCartProductFile1() {
     return cartProductFile1;
 }

 public void setCartProductFile1(String cartProductFile1) {
     this.cartProductFile1 = cartProductFile1;
 }

 // Cart 모델 복사
 public void CopyData(CartDTO param)
 {
     this.cartId = param.getCartId();
     this.memberId = param.getMemberId();
     this.cartProductId = param.getCartProductId();
     this.cartProductCounts = param.getCartProductCounts();
     this.cartProductFile1 = param.getCartProductFile1();
 }
}