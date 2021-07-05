// 수정 추가 했습니다.
CREATE TABLE notice
(
    notice_id             NUMBER	    	NOT NULL, 
    notice_writer_id      VARCHAR2(36)      NOT NULL, 
    notice_title          VARCHAR(255)      NOT NULL, 
    notice_content        VARCHAR2(4000)    NOT NULL, 
    notice_views          NUMBER       		DEFAULT 0, 
    notice_create_date    DATE        		DEFAULT sysdate,
    notice_update_date    DATE        		DEFAULT sysdate, 
    notice_Image_file_name varchar(100)     NULL,
    CONSTRAINT PK_notice PRIMARY KEY (notice_id),
    CONSTRAINT FK_notice_notice_writer_id_adm FOREIGN KEY (notice_writer_id)
        REFERENCES admin (admin_id)
);

create sequence notice_seq;
/

CREATE INDEX IX_notice_1
    ON notice(notice_id, notice_writer_id)
/

CREATE UNIQUE INDEX UQ_notice_1
    ON notice(notice_id);
 