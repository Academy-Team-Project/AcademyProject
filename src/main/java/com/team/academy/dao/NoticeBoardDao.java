package com.team.academy.dao;

import java.util.ArrayList;
import com.team.academy.dto.NoticeBoardDto;


public interface NoticeBoardDao {

	public void noticewriteDao(String memberid, String noticetitle, String noticecontent);		// 공지사항 글 작성
	
	public ArrayList<NoticeBoardDto> noticelistDao();		// 공지사항 글 목록 출력
	
//	[게시글 검색용 Dao]	
	public ArrayList<NoticeBoardDto> noticeTitleSearchList(String keyword);		// 공지사항 제목으로 검색한 결과 리스트 가져오기
	public ArrayList<NoticeBoardDto> noticeContentSearchList(String keyword);	// 공지사항 내용으로 검색한 결과 리스트 가져오기
	public ArrayList<NoticeBoardDto> noticeNameSearchList(String keyword);		// 공지사항 글쓴이로 검색한 결과 리스트 가져오기

	public NoticeBoardDto noticeviewDao(String noticenum);		// 공지사항 글 내용 보기
	
	public void noticehitDao(String noticenum);		// 공지사항 조회수 증가 함수
	
	public void noticedeleteDao(String noticenum);	// 공지사항 글 삭제
	
}
