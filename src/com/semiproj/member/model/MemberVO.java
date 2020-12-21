package com.semiproj.member.model;

import java.sql.Timestamp;

public class MemberVO {
	private int no;
	private String email;
	private String pwd;
	private String nickname;
	private String name;
	private String hp;
	private String zipcode;
	private String address;
	private String addressDetail;
	private Timestamp regdate;
	private Timestamp outdate;
	
	public MemberVO() {
		super();
	}

	public MemberVO(int no, String email, String pwd, String nickname, String name, String hp, String zipcode,
			String address, String addressDetail, Timestamp regdate, Timestamp outdate) {
		super();
		this.no = no;
		this.email = email;
		this.pwd = pwd;
		this.nickname = nickname;
		this.name = name;
		this.hp = hp;
		this.zipcode = zipcode;
		this.address = address;
		this.addressDetail = addressDetail;
		this.regdate = regdate;
		this.outdate = outdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public Timestamp getOutdate() {
		return outdate;
	}

	public void setOutdate(Timestamp outdate) {
		this.outdate = outdate;
	}

	@Override
	public String toString() {
		return "MemberVO [no=" + no + ", email=" + email + ", pwd=" + pwd + ", nickname=" + nickname + ", name=" + name
				+ ", hp=" + hp + ", zipcode=" + zipcode + ", address=" + address + ", addressDetail=" + addressDetail
				+ ", regdate=" + regdate + ", outdate=" + outdate + "]";
	}
}
