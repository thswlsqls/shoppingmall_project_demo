--member
CREATE TABLE member
(
    member_idx            VARCHAR2(36)     NOT NULL, 
    member_name           VARCHAR2(255)    NOT NULL, 
    member_email          VARCHAR2(45)     NOT NULL, 
    member_password       VARCHAR2(255)    NOT NULL, 
    member_role           VARCHAR2(45)     NOT NULL, 
    member_address        VARCHAR2(255)    NOT NULL, 
    member_create_date    DATE             NOT NULL, 
    member_mileage        NUMBER           NULL, 
    member_point          NUMBER           NULL, 
    member_id             VARCHAR2(36)     NOT NULL, 
    member_phone          NUMBER           NOT NULL, 
    member_sessionId      VARCHAR2(45)     NOT NULL, 
    member_limitTime      DATE             NOT NULL, 
    CONSTRAINT PK_member PRIMARY KEY (member_idx)
)
insert into member (member_idx, 
                    member_name, 
                    member_email, 
                    member_password, 
                    member_role, 
                    member_address, 
                    member_create_date, 
                    member_mileage, 
                    member_point, 
                    member_id, 
                    member_phone,
                    member_sessionId,
                    member_limitTime
                          ) values ('5a1be4a512364cf1beee3e4b555c6d5e', 
                                    '홍길동', 
                                    'test@naver.com', 
                                    '$2a$10$Lb4gboSjM.5KuHf1D3.ByOG/euB45310YHy9bpwjEecgKME3SnGAy',
                                    'user',
                                    'seoul',
                                    to_date('20210701', 'YYYY-MM-DD'),
                                    0,
                                    0,
                                    'test',
                                    '12345678',
                                    nan,
                                    to_date('20210703', 'YYYY-MM-DD'));
                                    
insert into member (member_idx, 
                    member_name, 
                    member_email, 
                    member_password, 
                    member_role, 
                    member_address, 
                    member_create_date, 
                    member_mileage, 
                    member_point, 
                    member_id, 
                    member_phone,
                    member_sessionId,
                    member_limitTime
                          ) values ('139efe026f1145c3be25db834c01ed42', 
                                    '홍길동2', 
                                    'test2@naver.com', 
                                    '$2a$10$kYtwUkyISNrEarNL2nN8Dub0Zh1fsPnSpm6RYwGCvWzr0g0S4y1Dm',
                                    'user',
                                    'Seoul',
                                    to_date('20210701', 'YYYY-MM-DD'),
                                    0,
                                    0,
                                    'test02',
                                    '2345678',
                                    nan,
                                    to_date('20210703', 'YYYY-MM-DD'));
                                    
insert into member (member_idx, admin_email, admin_password, admin_name) values ('760e3cd7f050432282790b4f87cda83a', 'admin@naver.com', '1234', 'admin');
select * from member;

/
CREATE INDEX IX_member_1
    ON member(member_idx);
/
CREATE UNIQUE INDEX UQ_member_1
    ON member(member_idx);
/
select * from member;

SELECT COLUMN_NAME, COMMENTS FROM ALL_COL_COMMENTS WHERE TABLE_NAME = 'member';
select * from ALL_COL_COMMENTS where table_name = 'member';
SELECT * FROM USER_TAB_COMMENTS;
SELECT * FROM USER_COL_COMMENTS;

drop table member;
select * from member;
