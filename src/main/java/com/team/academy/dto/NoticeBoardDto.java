package com.team.academy.dto;

public class NoticeBoardDto {
	
	private int noticenum;			// 공지사항 글번호
	private String memberid;		// 공지사항 작성자 아이디
	private String noticetitle;		// 공지사항 글제목
	private String noticecontent;	// 공지사항 글내용
	private String noticedate;		// 공지사항 작성일
	private int noticehit;			// 공지사항 조회수
	private String membername;		// 공지사항 작성자 이름 => 회원 테이블 필드를 Join으로 가져옴
	
	// 생성자
	public NoticeBoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 생성자(인수O)
	public NoticeBoardDto(int noticenum, String memberid, String noticetitle, String noticecontent, String noticedate,
			int noticehit, String membername) {
		super();
		this.noticenum = noticenum;
		this.memberid = memberid;
		this.noticetitle = noticetitle;
		this.noticecontent = noticecontent;
		this.noticedate = noticedate;
		this.noticehit = noticehit;
		this.membername = membername;
	}

	// Getter and Setter
	public int getNoticenum() {
		return noticenum;
	}


	public void setNoticenum(int noticenum) {
		this.noticenum = noticenum;
	}


	public String getMemberid() {
		return memberid;
	}


	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


	public String getNoticetitle() {
		return noticetitle;
	}


	public void setNoticetitle(String noticetitle) {
		this.noticetitle = noticetitle;
	}


	public String getNoticecontent() {
		return noticecontent;
	}


	public void setNoticecontent(String noticecontent) {
		this.noticecontent = noticecontent;
	}


	public String getNoticedate() {
		return noticedate;
	}


	public void setNoticedate(String noticedate) {
		this.noticedate = noticedate;
	}


	public int getNoticehit() {
		return noticehit;
	}


	public void setNoticehit(int noticehit) {
		this.noticehit = noticehit;
	}


	public String getMembername() {
		return membername;
	}


	public void setMembername(String membername) {
		this.membername = membername;
	}
	
	
	
}
