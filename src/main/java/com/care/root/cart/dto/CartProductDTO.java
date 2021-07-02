package com.care.root.cart.dto;

// 장바구니 추가 상품 
public class CartProductDTO {

	    // 장바구니 상품 아이디 
	    private String cartProductId;

	    // 장바구니 아이디 
	    private String cartId;

	    // 장바구니 상품 개수 
	    private int cartProductCounts;

	    public String getCartProductId() {
	        return cartProductId;
	    }

	    public void setCartProductId(String cartProductId) {
	        this.cartProductId = cartProductId;
	    }

	    public String getCartId() {
	        return cartId;
	    }

	    public void setCartId(String cartId) {
	        this.cartId = cartId;
	    }

	    public int getCartProductCounts() {
	        return cartProductCounts;
	    }

	    public void setCartProductCounts(int cartProductCounts) {
	        this.cartProductCounts = cartProductCounts;
	    }

	    // CartProduct 모델 복사
	    public void CopyData(CartProductDTO param)
	    {
	        this.cartProductId = param.getCartProductId();
	        this.cartId = param.getCartId();
	        this.cartProductCounts = param.getCartProductCounts();
	    }
	}
