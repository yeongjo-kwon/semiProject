package com.semiproj.eventboard.model;

import java.sql.Timestamp;

public class eventBoardVO {
	private int no;
	private String title;
	private Timestamp regdate;
	private String content;
	private String imgFileName;
	private String imgOriginFileName;
	private int downcount;
	
	public eventBoardVO() {
		super();
	}

	public eventBoardVO(int no, String title, Timestamp regdate, String content, String imgFileName,
			String imgOriginFileName, int downcount) {
		super();
		this.no = no;
		this.title = title;
		this.regdate = regdate;
		this.content = content;
		this.imgFileName = imgFileName;
		this.imgOriginFileName = imgOriginFileName;
		this.downcount = downcount;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}

	public String getImgOriginFileName() {
		return imgOriginFileName;
	}

	public void setImgOriginFileName(String imgOriginFileName) {
		this.imgOriginFileName = imgOriginFileName;
	}
	
	public int getDowncount() {
		return downcount;
	}

	public void setDowncount(int downcount) {
		this.downcount = downcount;
	}

	@Override
	public String toString() {
		return "eventBoardVO [no=" + no + ", title=" + title + ", regdate=" + regdate + ", content=" + content
				+ ", imgFileName=" + imgFileName + ", imgOriginFileName=" + imgOriginFileName + ", downcount="
				+ downcount + "]";
	}

	
}