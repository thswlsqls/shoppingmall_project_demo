package com.care.root.notice.dto;

import java.sql.Date;

// 공지사항
public class NoticeDTO {

	    // 공지 아이디 
	    private String noticeId;

	    // 공지 작성자 아이디 
	    private String noticeWriterId;

	    // 공지 제목 
	    private String noticeTitle;

	    // 공지 내용 
	    private String noticeContent;

	    // 공지 조회수 
	    private int noticeViews;

	    // 공지 생성 날짜 
	    private Date noticeCreateDate;

	    // 공지 수정 날짜 
	    private Date noticeUpdateDate;

	    public String getNoticeId() {
	        return noticeId;
	    }

	    public void setNoticeId(String noticeId) {
	        this.noticeId = noticeId;
	    }

	    public String getNoticeWriterId() {
	        return noticeWriterId;
	    }

	    public void setNoticeWriterId(String noticeWriterId) {
	        this.noticeWriterId = noticeWriterId;
	    }

	    public String getNoticeTitle() {
	        return noticeTitle;
	    }

	    public void setNoticeTitle(String noticeTitle) {
	        this.noticeTitle = noticeTitle;
	    }

	    public String getNoticeContent() {
	        return noticeContent;
	    }

	    public void setNoticeContent(String noticeContent) {
	        this.noticeContent = noticeContent;
	    }

	    public int getNoticeViews() {
	        return noticeViews;
	    }

	    public void setNoticeViews(int noticeViews) {
	        this.noticeViews = noticeViews;
	    }

	    public Date getNoticeCreateDate() {
	        return noticeCreateDate;
	    }

	    public void setNoticeCreateDate(Date noticeCreateDate) {
	        this.noticeCreateDate = noticeCreateDate;
	    }

	    public Date getNoticeUpdateDate() {
	        return noticeUpdateDate;
	    }

	    public void setNoticeUpdateDate(Date noticeUpdateDate) {
	        this.noticeUpdateDate = noticeUpdateDate;
	    }

	    // Notice 모델 복사
	    public void CopyData(NoticeDTO param)
	    {
	        this.noticeId = param.getNoticeId();
	        this.noticeWriterId = param.getNoticeWriterId();
	        this.noticeTitle = param.getNoticeTitle();
	        this.noticeContent = param.getNoticeContent();
	        this.noticeViews = param.getNoticeViews();
	        this.noticeCreateDate = param.getNoticeCreateDate();
	        this.noticeUpdateDate = param.getNoticeUpdateDate();
	    }
	}