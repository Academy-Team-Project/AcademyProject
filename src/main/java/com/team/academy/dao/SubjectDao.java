package com.team.academy.dao;

import java.util.ArrayList;

import com.team.academy.dto.SubjectDto;

public interface SubjectDao {

	public void subjectcreateDao(String subjectcode, String subjectname, String subjectcontent, String subjectdays, String subjectstudentmax, String subjectclassroom, String memberid, String membername);	// 수업 개설

	public ArrayList<SubjectDto> subjectlistDao();		// 수업 목록
	
//	[게시글 검색용 Dao]	
	public ArrayList<SubjectDto> subjectnameSearchList(String keyword);		// 수업목록 수업명으로 검색한 결과 리스트 가져오기
	public ArrayList<SubjectDto> subjectteacherSearchList(String keyword);	// 수업목록 담당교사로 검색한 결과 리스트 가져오기

	public SubjectDto subjectviewDao(String subjectcode);	// 수업 정보 보기
	
	public SubjectDto subjectdetailDao(String subjectcode);	// 수업 정보 상세보기
	
	public void subjectmodifyDao(String subjectname, String subjectcontent, String subjectdays, String subjectstudentmax, String subjectclassroom, String subjectcode);	// 수업 정보 수정에 필요한 데이터목록, where 조건에 들어가는건 마지막에 넣어야함

	public void subjectdeleteDao(String subjectcode);	//	수업 삭제
}
