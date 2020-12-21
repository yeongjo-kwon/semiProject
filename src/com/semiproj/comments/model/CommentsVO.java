package com.semiproj.comments.model;

import java.sql.Timestamp;

public class CommentsVO {
	private int no;
	private String nickname; 
	private String pwd;
	Timestamp regdate;
	private String content;
	private int bookNo ;
	
	public CommentsVO() {
		super();
	}
	public CommentsVO(int no, String nickname, String pwd, Timestamp regdate, String content, int bookNo) {
		super();
		this.no = no;
		this.nickname = nickname;
		this.pwd = pwd;
		this.regdate = regdate;
		this.content = content;
		this.bookNo = bookNo;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public int getBookNo() {
		return bookNo;
	}
	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}
	
	@Override
	public String toString() {
		return "CommentsVO [no=" + no + ", nickname=" + nickname + ", pwd=" + pwd + ", regdate=" + regdate
				+ ", content=" + content + ", bookNo=" + bookNo + "]";
	}
}
