package com.team.academy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.academy.dao.MemberDao;
import com.team.academy.dto.MemberDto;

@Controller
public class BoardController {
	
	@Autowired		// 자동 bean 생성 및 주입, 자동 초기화
	private SqlSession sqlSession;
	
	
	// 메인 공지사항 메뉴로 이동하는 화면 반환
	@RequestMapping (value = "/notice/notice_list")
	public String notice_list() {
		
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
	
	
	
	
	// 질문게시판 메뉴로 이동하는 화면 반환
	@RequestMapping (value = "/question/question_list")
	public String question_list() {
		
		return "/question/question_list";
	}	
	
}
