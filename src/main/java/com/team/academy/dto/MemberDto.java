package com.team.academy.dto;

public class MemberDto {
	
	private String memberid;		// 회원 아이디(primary key)
	private String memberpw;		// 회원 비밀번호
	private String membertype;		// 회원 구분(학생, 교사, 직원)
	private String membername;		// 회원 이름
	private String memberbirth;		// 회원 생년월일
	private String membertel;		// 회원 연락처
	private String memberemail;		// 회원 이메일
	private String memberaddress;	// 회원 주소
	private String enrolldate;		// 회원 가입일
	
	// 생성자
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 생성자(인수O)
	public MemberDto(String memberid, String memberpw, String membertype, String membername, String memberbirth,
			String membertel, String memberemail, String memberaddress, String enrolldate) {
		super();
		this.memberid = memberid;
		this.memberpw = memberpw;
		this.membertype = membertype;
		this.membername = membername;
		this.memberbirth = memberbirth;
		this.membertel = membertel;
		this.memberemail = memberemail;
		this.memberaddress = memberaddress;
		this.enrolldate = enrolldate;
	}

	// Getter and Setter
	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getMemberpw() {
		return memberpw;
	}

	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}

	public String getMembertype() {
		return membertype;
	}

	public void setMembertype(String membertype) {
		this.membertype = membertype;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getMemberbirth() {
		return memberbirth;
	}

	public void setMemberbirth(String memberbirth) {
		this.memberbirth = memberbirth;
	}

	public String getMembertel() {
		return membertel;
	}

	public void setMembertel(String membertel) {
		this.membertel = membertel;
	}

	public String getMemberemail() {
		return memberemail;
	}

	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}

	public String getMemberaddress() {
		return memberaddress;
	}

	public void setMemberaddress(String memberaddress) {
		this.memberaddress = memberaddress;
	}

	public String getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(String enrolldate) {
		this.enrolldate = enrolldate;
	}
	
	
	
}
