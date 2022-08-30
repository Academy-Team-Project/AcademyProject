package com.team.academy.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.academy.dao.MemberDao;
import com.team.academy.dao.NoticeBoardDao;
import com.team.academy.dao.QuestionBoardDao;
import com.team.academy.dto.MemberDto;
import com.team.academy.dto.NoticeBoardDto;
import com.team.academy.dto.QuestionBoardDto;

@Controller
public class BoardController {
	
	@Autowired		// 자동 bean 생성 및 주입, 자동 초기화
	private SqlSession sqlSession;
	
	
	// 메인 공지사항 메뉴로 이동하는 화면 반환
	@RequestMapping (value = "/notice/notice_list")
	public String notice_list(HttpServletRequest request, Model model) {
		
		String searchKeyword = request.getParameter("searchKeyword");
		String searchOption = request.getParameter("searchOption");
		
		HttpSession session = request.getSession();		// session
		
		NoticeBoardDao noticeboardDao = sqlSession.getMapper(NoticeBoardDao.class);
		
//		[게시판 검색 파트]		
		ArrayList<NoticeBoardDto> noticeboardDto = null;
		
		if(searchKeyword == null) {	// 검색할 키워드를 입력하지 않았을때 리스트 목록 전체출력
			noticeboardDto = noticeboardDao.noticelistDao();
		}
		else if (searchOption.equals("title")) {
			noticeboardDto = noticeboardDao.noticeTitleSearchList(searchKeyword);
		}
		else if (searchOption.equals("content")) {
			noticeboardDto = noticeboardDao.noticeContentSearchList(searchKeyword);
		}
		else if (searchOption.equals("writer")) {
			noticeboardDto = noticeboardDao.noticeNameSearchList(searchKeyword);
		}
		
		model.addAttribute("noticelist", noticeboardDto);
		
		return "/notice/notice_list";
	}	
	
	
	@RequestMapping (value = "/notice/notice_write")
	public String notice_write(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sessionId = (String) session.getAttribute("sessionId");
		String sessionName = (String) session.getAttribute("sessionName");
		String sessionType = (String) session.getAttribute("sessionType");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		if (sessionType.equals("직원")) {
			MemberDto memberDto = memberDao.memberdetailDao(sessionType);
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("sessionId", sessionId);
			model.addAttribute("sessionName", sessionName);
		}
		
		return "/notice/notice_write";
	}
	
	
	@RequestMapping (value = "/notice/notice_writeOk", method = RequestMethod.POST)
	public String notice_writeOk(HttpServletRequest request, Model model) {
	
		String noticetitle = request.getParameter("noticetitle");
		String noticecontent = request.getParameter("noticecontent");
		
		NoticeBoardDao noticeboardDao = sqlSession.getMapper(NoticeBoardDao.class);
		HttpSession session = request.getSession();
		
		String memberid = (String) session.getAttribute("sessionId");	// id는 세션에서 뽑아냄
		
		noticeboardDao.noticewriteDao(memberid, noticetitle, noticecontent);
			
		
		return "redirect:notice_list";
	}
	
	
	@RequestMapping (value = "/notice/notice_view")
	public String notice_view(HttpServletRequest request, Model model) {
		
		String noticenum = request.getParameter("noticenum");
		
		NoticeBoardDao noticeBoardDao = sqlSession.getMapper(NoticeBoardDao.class);
		
		noticeBoardDao.noticehitDao(noticenum);		// 조회수 증가 함수 호출(클릭시 1씩 증가)
		
		NoticeBoardDto noticeBoardDto = noticeBoardDao.noticeviewDao(noticenum);
		
		model.addAttribute("noticeview", noticeBoardDto);
		model.addAttribute("noticeviewId", noticeBoardDto.getMemberid());	// 공지사항 작성자 아이디 불러오기
		
		return "/notice/notice_view";
	}
	
	
	@RequestMapping (value = "/notice/notice_modify")
	public String notice_modify(HttpServletRequest request, Model model) {
		
		
		String noticenum = request.getParameter("noticenum"); // 작성글 번호(hidden으로 숨긴값) 
		String noticetitle = request.getParameter("noticetitle"); // 게시글 제목 
		String noticecontent = request.getParameter("noticecontent"); // 게시글 내용
		
		NoticeBoardDao noticeBoardDao = sqlSession.getMapper(NoticeBoardDao.class);
		 
		noticeBoardDao.noticemodifyDao(noticetitle, noticecontent, noticenum);
		
		return "redirect:notice_list";		
	}
	
	@RequestMapping (value = "/notice/noticeDelete")
	public String noticeDelete(HttpServletRequest request, Model model) {
		
		String noticenum = request.getParameter("noticenum");
		
		NoticeBoardDao noticeBoardDao = sqlSession.getMapper(NoticeBoardDao.class);
		
		noticeBoardDao.noticedeleteDao(noticenum);
		
		return "redirect:notice_list";
	}
	
	
	
	// 질문게시판 메뉴로 이동하는 화면 반환
		@RequestMapping (value = "/question/question_list")
		public String question_list(HttpServletRequest request, Model model) {
			
			String searchKeyword = request.getParameter("searchKeyword");
			String searchOption = request.getParameter("searchOption");
			
			HttpSession session = request.getSession();		// session
			
			QuestionBoardDao questionboardDao = sqlSession.getMapper(QuestionBoardDao.class);
			
//			[게시판 검색 파트]		
			ArrayList<QuestionBoardDto> questionboardDto = null;
			
			if(searchKeyword == null) {	// 검색할 키워드를 입력하지 않았을때 리스트 목록 전체출력
				questionboardDto = questionboardDao.questionlistDao();
			}
			else if (searchOption.equals("title")) {
				questionboardDto = questionboardDao.questionTitleSearchList(searchKeyword);
			}
			else if (searchOption.equals("content")) {
				questionboardDto = questionboardDao.questionContentSearchList(searchKeyword);
			}
			else if (searchOption.equals("writer")) {
				questionboardDto = questionboardDao.questionNameSearchList(searchKeyword);
			}
			
			model.addAttribute("questionlist", questionboardDto);
			
			return "/question/question_list";
		}
		
//		question_write
		@RequestMapping (value = "/question/question_write")
		public String question_write(HttpServletRequest request, Model model) {
			
			HttpSession session = request.getSession();
			
			String sessionId = (String) session.getAttribute("sessionId");
			String sessionName = (String) session.getAttribute("sessionName");
			String sessionType = (String) session.getAttribute("sessionType");
			
			MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
			
			return "/question/question_write";
		}
		
		
		@RequestMapping (value = "/question/question_writeOk", method = RequestMethod.POST)
		public String question_writeOk(HttpServletRequest request, Model model) {
			
			String questiontitle = request.getParameter("questiontitle");
			String questioncontent = request.getParameter("questioncontent");
			
			QuestionBoardDao questionboardDao = sqlSession.getMapper(QuestionBoardDao.class);
			
			HttpSession session = request.getSession();
			
			String memberid = (String) session.getAttribute("sessionId");	// id는 세션에서 뽑아냄
			
			questionboardDao.questionwriteDao(memberid, questiontitle, questioncontent);
			
			return "redirect:question_list";
		}
		
		@RequestMapping (value = "/question/question_view")
		public String question_view(HttpServletRequest request, Model model) {
			
			String questionnum = request.getParameter("questionnum");
			
			QuestionBoardDao questionboardDao = sqlSession.getMapper(QuestionBoardDao.class);
			
			questionboardDao.questionhitDao(questionnum);		// 조회수 증가 함수 호출(클릭시 1씩 증가)
			
			QuestionBoardDto questionBoardDto = questionboardDao.questionviewDao(questionnum);
			
			model.addAttribute("questionview", questionBoardDto);
			model.addAttribute("questionviewId", questionBoardDto.getMemberid());	// 질문게시판 작성자 아이디 불러오기
			
			return "/question/question_view";
		}
		
		@RequestMapping (value = "/question/question_modify")
		public String question_modify(HttpServletRequest request, Model model) {
					
			String questionnum = request.getParameter("questionnum"); // 작성글 번호(hidden으로 숨긴값) 
			String questiontitle = request.getParameter("questiontitle"); // 게시글 제목 
			String questioncontent = request.getParameter("questioncontent"); // 게시글 내용
			
			QuestionBoardDao questionboardDao = sqlSession.getMapper(QuestionBoardDao.class);
			 
			questionboardDao.questionmodifyDao(questiontitle, questioncontent, questionnum);
			
			return "redirect:question_list";		
		}
		
		@RequestMapping (value = "/question/questionDelete")
		public String questionDelete(HttpServletRequest request, Model model) {
			
			String questionnum = request.getParameter("questionnum");
			
			QuestionBoardDao questionboardDao = sqlSession.getMapper(QuestionBoardDao.class);
			
			questionboardDao.questiondeleteDao(questionnum);
			
			return "redirect:question_list";
		}
	
}
