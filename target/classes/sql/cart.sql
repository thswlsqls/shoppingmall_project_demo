CREATE TABLE cart
(
    cart_id                VARCHAR2(36)    NOT NULL, 
    member_id              VARCHAR2(36)    NOT NULL, 
    cart_product_id        VARCHAR2(36)    NOT NULL,
    cart_product_price     NUMBER          NOT NULL,
    cart_product_file_1    VARCHAR2(500)   NULL,
    cart_product_counts    NUMBER          NOT NULL, 
    CONSTRAINT PK_cart_id PRIMARY KEY (cart_id),
    CONSTRAINT FK_cart_member_id FOREIGN KEY (member_id)
        REFERENCES member (member_idx)
);

CREATE UNIQUE INDEX UQ_cart_1
    ON cart(cart_id);
/
