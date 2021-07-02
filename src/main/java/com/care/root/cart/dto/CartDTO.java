package com.care.root.cart.dto;

// 장바구니 
public class CartDTO {

	    // 장바구니 아이디 
	    private String cartId;

	    // 회원 아이디 
	    private String memberId;

	    // 장바구니 상품 개수 
	    private int cartProductCounts;

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

	    public int getCartProductCounts() {
	        return cartProductCounts;
	    }

	    public void setCartProductCounts(int cartProductCounts) {
	        this.cartProductCounts = cartProductCounts;
	    }

	    // Cart 모델 복사
	    public void CopyData(CartDTO param)
	    {
	        this.cartId = param.getCartId();
	        this.memberId = param.getMemberId();
	        this.cartProductCounts = param.getCartProductCounts();
	    }
	}
