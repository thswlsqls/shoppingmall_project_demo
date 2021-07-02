CREATE TABLE cart
(
    cart_id                VARCHAR2(36)    NOT NULL, 
    member_id              VARCHAR2(36)    NOT NULL, 
    cart_product_counts    NUMBER          NOT NULL, 
    CONSTRAINT PK_blog_user PRIMARY KEY (cart_id)
)
/

COMMENT ON TABLE cart IS '장바구니'
/

COMMENT ON COLUMN cart.cart_id IS '장바구니 아이디'
/

COMMENT ON COLUMN cart.member_id IS '회원 아이디'
/

COMMENT ON COLUMN cart.cart_product_counts IS '장바구니 상품 개수'
/

CREATE INDEX IX_cart_1
    ON cart(cart_id, member_id)
/

CREATE UNIQUE INDEX UQ_cart_1
    ON cart(cart_id)
/

ALTER TABLE cart
    ADD CONSTRAINT FK_cart_member_id_member_membe FOREIGN KEY (member_id)
        REFERENCES member (member_idx)
/