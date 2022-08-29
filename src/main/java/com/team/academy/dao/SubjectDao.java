package com.team.academy.dao;

import java.util.ArrayList;

import com.team.academy.dto.SubjectDto;

public interface SubjectDao {

	public void subjectcreateDao(String subjectcode, String subjectname, String subjectcontent, String subjectdays, String subjectstudentmax, String subjectclassroom, String memberid);	// 수업 개설

	public ArrayList<SubjectDto> subjectlistDao();		// 수업 목록
	
//	[게시글 검색용 Dao]	
	public ArrayList<SubjectDto> subjectnameSearchList(String keyword);		// 수업목록 수업명으로 검색한 결과 리스트 가져오기
	public ArrayList<SubjectDto> subjectteacherSearchList(String keyword);	// 수업목록 담당교사로 검색한 결과 리스트 가져오기

	public SubjectDto subjectviewDao(String subjectcode);	// 수업 내용 보기
}
