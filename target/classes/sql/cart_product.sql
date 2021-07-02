CREATE TABLE cart_product
(
    cart_product_id        VARCHAR2(36)    NOT NULL, 
    cart_id                VARCHAR2(36)    NOT NULL, 
    cart_product_counts    NUMBER          NOT NULL, 
    CONSTRAINT PK_blog_comment PRIMARY KEY (cart_product_id)
)
/

COMMENT ON TABLE cart_product IS '장바구니 추가 상품'
/

COMMENT ON COLUMN cart_product.cart_product_id IS '장바구니 상품 아이디'
/

COMMENT ON COLUMN cart_product.cart_id IS '장바구니 아이디'
/

COMMENT ON COLUMN cart_product.cart_product_counts IS '장바구니 상품 개수'
/

CREATE INDEX IX_cart_product_1
    ON cart_product(cart_product_id, cart_id)
/

CREATE UNIQUE INDEX UQ_cart_product_1
    ON cart_product(cart_product_id)
/

ALTER TABLE cart_product
    ADD CONSTRAINT FK_cart_product_cart_id_cart_c FOREIGN KEY (cart_id)
        REFERENCES cart (cart_id)
/