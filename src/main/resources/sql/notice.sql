CREATE TABLE notice
(
    notice_id             VARCHAR2(36)      NOT NULL, 
    notice_writer_id      VARCHAR2(36)      NOT NULL, 
    notice_title          VARCHAR(255)      NOT NULL, 
    notice_content        VARCHAR2(4000)    NOT NULL, 
    notice_views          NUMBER            NOT NULL, 
    notice_create_date    DATE              NOT NULL, 
    notice_update_date    DATE              NULL, 
    CONSTRAINT PK_notice PRIMARY KEY (notice_id)
)
/

COMMENT ON TABLE notice IS '공지사항'
/

COMMENT ON COLUMN notice.notice_id IS '공지 아이디'
/

COMMENT ON COLUMN notice.notice_writer_id IS '공지 작성자 아이디'
/

COMMENT ON COLUMN notice.notice_title IS '공지 제목'
/

COMMENT ON COLUMN notice.notice_content IS '공지 내용'
/

COMMENT ON COLUMN notice.notice_views IS '공지 조회수'
/

COMMENT ON COLUMN notice.notice_create_date IS '공지 생성 날짜'
/

COMMENT ON COLUMN notice.notice_update_date IS '공지 수정 날짜'
/

CREATE INDEX IX_notice_1
    ON notice(notice_id, notice_writer_id)
/

CREATE UNIQUE INDEX UQ_notice_1
    ON notice(notice_id)
/

ALTER TABLE notice
    ADD CONSTRAINT FK_notice_notice_writer_id_adm FOREIGN KEY (notice_writer_id)
        REFERENCES admin (admin_id)
/