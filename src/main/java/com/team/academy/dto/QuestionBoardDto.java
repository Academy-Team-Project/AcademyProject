package com.team.academy.dto;

public class QuestionBoardDto {

	private int questionnum;			// 질문게시판 게시글 번호
	private String memberid;			// 질문게시판 작성자 id
	private String questiontitle;		// 질문게시판 게시글 제목
	private String questioncontent;		// 질문게시판 게시글 내용
	private String questiondate;		// 질문게시판 작성일
	private int questionhit;			// 질문게시판 게시글 조회수
	private int	questiongroup;			// 질문게시판 답글과의 그룹화(1개의 글에 답글 여러개를 묶음)
	private int questionstep;			// 질문게시판 답글 단계
	private int questionindent;			// 질문게시판 답글의 단계에 따른 들여쓰기
	
	//  생성자
	public QuestionBoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 생성자(인수O)
	public QuestionBoardDto(int questionnum, String memberid, String questiontitle, String questioncontent,
			String questiondate, int questionhit, int questiongroup, int questionstep, int questionindent) {
		super();
		this.questionnum = questionnum;
		this.memberid = memberid;
		this.questiontitle = questiontitle;
		this.questioncontent = questioncontent;
		this.questiondate = questiondate;
		this.questionhit = questionhit;
		this.questiongroup = questiongroup;
		this.questionstep = questionstep;
		this.questionindent = questionindent;
	}

	// Getter and Setter
	public int getQuestionnum() {
		return questionnum;
	}

	public void setQuestionnum(int questionnum) {
		this.questionnum = questionnum;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getQuestiontitle() {
		return questiontitle;
	}

	public void setQuestiontitle(String questiontitle) {
		this.questiontitle = questiontitle;
	}

	public String getQuestioncontent() {
		return questioncontent;
	}

	public void setQuestioncontent(String questioncontent) {
		this.questioncontent = questioncontent;
	}

	public String getQuestiondate() {
		return questiondate;
	}

	public void setQuestiondate(String questiondate) {
		this.questiondate = questiondate;
	}

	public int getQuestionhit() {
		return questionhit;
	}

	public void setQuestionhit(int questionhit) {
		this.questionhit = questionhit;
	}

	public int getQuestiongroup() {
		return questiongroup;
	}

	public void setQuestiongroup(int questiongroup) {
		this.questiongroup = questiongroup;
	}

	public int getQuestionstep() {
		return questionstep;
	}

	public void setQuestionstep(int questionstep) {
		this.questionstep = questionstep;
	}

	public int getQuestionindent() {
		return questionindent;
	}

	public void setQuestionindent(int questionindent) {
		this.questionindent = questionindent;
	}
}
