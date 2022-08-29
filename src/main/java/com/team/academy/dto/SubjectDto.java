package com.team.academy.dto;

public class SubjectDto {
	
	private String subjectcode;			// 수업코드
	private String subjectname;			// 수업명
	private String subjectcontent;		// 수업내용
	private String subjectdays;			// 수업일
	private String subjectstudents;		// 수강생
	private String subjectstudentmax;	// 최대수강인원
	private String subjectclassroom;	// 강의실
	private String memberid;			// 담당교사 아이디
	
	
	// 생성자
	public SubjectDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	// 생성자 (인수O)
	public SubjectDto(String subjectcode, String subjectname, String subjectcontent, String subjectdays,
			String subjectstudents, String subjectstudentmax, String subjectclassroom, String memberid) {
		super();
		this.subjectcode = subjectcode;
		this.subjectname = subjectname;
		this.subjectcontent = subjectcontent;
		this.subjectdays = subjectdays;
		this.subjectstudents = subjectstudents;
		this.subjectstudentmax = subjectstudentmax;
		this.subjectclassroom = subjectclassroom;
		this.memberid = memberid;
	}

	
	// Getter and Setter
	public String getSubjectcode() {
		return subjectcode;
	}

	public void setSubjectcode(String subjectcode) {
		this.subjectcode = subjectcode;
	}

	public String getSubjectname() {
		return subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}

	public String getSubjectcontent() {
		return subjectcontent;
	}

	public void setSubjectcontent(String subjectcontent) {
		this.subjectcontent = subjectcontent;
	}

	public String getSubjectdays() {
		return subjectdays;
	}

	public void setSubjectdays(String subjectdays) {
		this.subjectdays = subjectdays;
	}

	public String getSubjectstudents() {
		return subjectstudents;
	}

	public void setSubjectstudents(String subjectstudents) {
		this.subjectstudents = subjectstudents;
	}

	public String getSubjectstudentmax() {
		return subjectstudentmax;
	}

	public void setSubjectstudentmax(String subjectstudentmax) {
		this.subjectstudentmax = subjectstudentmax;
	}

	public String getSubjectclassroom() {
		return subjectclassroom;
	}

	public void setSubjectclassroom(String subjectclassroom) {
		this.subjectclassroom = subjectclassroom;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

}
