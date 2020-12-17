package com.semiproj.comments.model;

import java.sql.Timestamp;

public class CommentsVO {
	private int no;	//댓글번호
	private int bookNo; //책번호
	private String userid; //아이디
	private String content;	//내용
	private Timestamp regdate;	//등록시간
	
	public CommentsVO() {
		super();
	}
	public CommentsVO(int no, int bookNo, String userid, String content, Timestamp regdate) {
		super();
		this.no = no;
		this.bookNo = bookNo;
		this.userid = userid;
		this.content = content;
		this.regdate = regdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "CommentsVO [no=" + no + ", bookNo=" + bookNo + ", userid=" + userid + ", content=" + content
				+ ", regdate=" + regdate + "]";
	}
}
