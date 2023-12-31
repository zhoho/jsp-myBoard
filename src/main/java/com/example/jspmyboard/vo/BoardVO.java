package com.example.jspmyboard.vo;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String title;
	private String writer;
	private String content;
	private Date regdate;
	private String mbti;
	private String photo;
	private String info;
	private int cnt;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getGetPhoto() {
		return photo;

	}
	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
}
