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
/
CREATE INDEX IX_member_1
    ON member(member_idx);
/
CREATE UNIQUE INDEX UQ_member_1
    ON member(member_idx);
/

SELECT COLUMN_NAME, COMMENTS FROM ALL_COL_COMMENTS WHERE TABLE_NAME = 'member';
select * from ALL_COL_COMMENTS where table_name = 'member';
SELECT * FROM USER_TAB_COMMENTS;
SELECT * FROM USER_COL_COMMENTS;

drop table member;
select * from member;

