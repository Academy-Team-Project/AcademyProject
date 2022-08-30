package com.team.academy.dao;

import java.util.ArrayList;
import com.team.academy.dto.NoticeBoardDto;
import com.team.academy.dto.QuestionBoardDto;


public interface QuestionBoardDao {
	
	public void questionwriteDao(String memberid, String questiontitle, String questioncontent);	// 질문게시판 글 작성
	
	public ArrayList<QuestionBoardDto> questionlistDao();		// 질문게시판 글 목록 출력
	
	public ArrayList<QuestionBoardDto> questionTitleSearchList(String keyword);		// 질문게시판 제목으로 검색한 결과 리스트 가져오기
	public ArrayList<QuestionBoardDto> questionContentSearchList(String keyword);	// 질문게시판 내용으로 검색한 결과 리스트 가져오기
	public ArrayList<QuestionBoardDto> questionNameSearchList(String keyword);		// 질문게시판 글쓴이로 검색한 결과 리스트 가져오기
	
	public QuestionBoardDto questionviewDao(String questionnum);		// 질문게시판 글 내용 보기
	
	public void questionhitDao(String questionnum);		// 질문게시판 조회수 증가 함수
	
	public void questionmodifyDao(String questiontitle, String questioncontent, String questionnum);	// 질문게시판 글 수정
	
	public void questiondeleteDao(String questionnum);	// 질문게시판 글 삭제
	
}
