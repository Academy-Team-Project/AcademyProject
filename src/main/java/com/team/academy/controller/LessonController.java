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
import com.team.academy.dao.SubjectDao;
import com.team.academy.dto.MemberDto;
import com.team.academy.dto.SubjectDto;

@Controller
public class LessonController {
	
	@Autowired		// 자동 bean 생성 및 주입, 자동 초기화
	private SqlSession sqlSession;
	
	
	@RequestMapping (value = "/lesson/lesson_list")
	public String lesson_list(HttpServletRequest request, Model model) {
		
		String searchKeyword = request.getParameter("searchKeyword");
		String searchOption = request.getParameter("searchOption");
		
		HttpSession session = request.getSession();		// session
		
		SubjectDao subjectDao = sqlSession.getMapper(SubjectDao.class);
		
//		[게시판 검색 파트]		
		ArrayList<SubjectDto> subjectDto = null;
		
		if(searchKeyword == null) {	// 검색할 키워드를 입력하지 않았을때 리스트 목록 전체출력
			subjectDto = subjectDao.subjectlistDao();
		}
		else if (searchOption.equals("subjectname")) {
			subjectDto = subjectDao.subjectnameSearchList(searchKeyword);
		}
		else if (searchOption.equals("teacher")) {
			subjectDto = subjectDao.subjectteacherSearchList(searchKeyword);
		}
		
		model.addAttribute("subjectlist", subjectDto);
		
		
		return "/lesson/lesson_list";
	}	// 수업관리 메뉴를 선택하면 동작하는 화면 반환
	
	
	
	@RequestMapping (value = "/lesson/subject_create")
	public String subject_create(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sessionId = (String) session.getAttribute("sessionId");
		String sessionName = (String) session.getAttribute("sessionName");
		String sessionType = (String) session.getAttribute("sessionType");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		if (sessionType.equals("교사")) {
			MemberDto memberDto = memberDao.memberdetailDao(sessionType);
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("sessionId", sessionId);
			model.addAttribute("sessionName", sessionName);
		}
		
		return "/lesson/subject_create";
	}
	
	
	
	@RequestMapping (value = "/lesson/subject_createOk", method = RequestMethod.POST)
	public String subject_createOk(HttpServletRequest request, Model model){
		
		String subjectcode = request.getParameter("subjectcode");		// 수업코드
		String subjectname = request.getParameter("subjectname");		// 수업명
		String subjectdays = request.getParameter("subjectdays");		// 수업일
		String subjectstudentmax = request.getParameter("subjectstudentmax");	// 최대수강인원
		String subjectclassroom = request.getParameter("subjectclassroom");		// 강의실
		String subjectcontent = request.getParameter("subjectcontent");		// 수업내용
		
		SubjectDao subjectDao = sqlSession.getMapper(SubjectDao.class);	
		HttpSession session = request.getSession();
		
		String memberid = (String) session.getAttribute("sessionId");	// id는 세션에서 뽑아냄
		 
		subjectDao.subjectcreateDao(subjectcode, subjectname, subjectcontent, subjectdays, subjectstudentmax, subjectclassroom, memberid);
		
		
		
		return "redirect:lesson_list";
	}
	
	
	@RequestMapping (value = "/lesson/subject_view")
	public String subject_view(HttpServletRequest request, Model model) {
		
		String subjectcode = request.getParameter("subjectcode");
		
		SubjectDao subjectDao = sqlSession.getMapper(SubjectDao.class);
		SubjectDto subjectDto = subjectDao.subjectviewDao(subjectcode);
		
		model.addAttribute("subjectview", subjectDto);
		model.addAttribute("subjectteacherId", subjectDto.getMemberid());	// 수업을 개설한 교사의 아이디 담기
		
		
		
		return "/lesson/subject_view";
	}
	
	
	
	
	@RequestMapping (value = "/lesson/mylesson_list")
	public String mylesson_list() {
		
		return "/lesson/mylesson_list";
	}	// 내수업 메뉴를 선택하면 동작하는 화면 반환
	
	
	@RequestMapping (value = "/lesson/grade_list")
	public String grade_list() {
		
		return "/lesson/grade_list";
	}	// 성적관리 메뉴를 선택하면 동작하는 화면 반환
}
