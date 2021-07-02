-- admin
CREATE TABLE admin
(
    admin_id          VARCHAR2(32)     NOT NULL, 
    admin_email       VARCHAR2(45)     NOT NULL, 
    admin_password    VARCHAR2(255)    NOT NULL, 
    admin_name        VARCHAR2(255)    NOT NULL, 
    CONSTRAINT PK_admin_id PRIMARY KEY (admin_id)
);

CREATE INDEX IX_admin_1
    ON admin(admin_id);
/

CREATE UNIQUE INDEX UQ_admin_1
    ON admin(admin_id);
/
select * from admin;
insert into admin (admin_id, admin_email, admin_password, admin_name) values ('760e3cd7f050432282790b4f87cda83a', 'admin@naver.com', '1234', 'admin');

