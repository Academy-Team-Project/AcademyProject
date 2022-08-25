package com.team.academy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.academy.dto.MemberDto;
import com.team.academy.dao.MemberDao;

@Controller
public class MainController {
	
	@Autowired		// 자동 bean 생성 및 주입, 자동 초기화
	private SqlSession sqlSession;
	
	@RequestMapping (value = "/")
	public String login() {
		
		return "index";
	}	// 처음 서버 들어오자마자 동작하는 화면 반환
	
	
	@RequestMapping (value = "/index")
	public String index() {
		
		return "index";
	}	// 링크로 동작하는 화면 반환
	
	
	@RequestMapping (value = "/memberLoginOk", method = RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		String membertype = request.getParameter("membertype");
		String memberid = request.getParameter("memberid");
		String memberpw = request.getParameter("memberpw");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		int memberidCheck = memberDao.memberidCheckDao(memberid);	// 1이 반환되면 아이디가 존재
		int memberidtypeCheck = memberDao.memberidtypeCheckDao(membertype, memberid);	// 아이디와 회원구분이 일치하면 1을 반환 
		int memberidtypepwCheck = memberDao.memberidtypepwCheckDao(membertype, memberid, memberpw);	// 아이디와 회원구분, 비밀번호가 일치하면 1을 반환
		
		model.addAttribute("memberidCheck", memberidCheck);		// 0이면 아이디가 없으므로 경고창 발생 
		model.addAttribute("memberidtypeCheck", memberidtypeCheck);	 // 회원타입과 아이디가 일치하지 않으면 경고창 발생
		model.addAttribute("memberidtypepwCheck", memberidtypepwCheck);	 // 회원타입과 아이디, 비밀번호가 일치하지 않으면 경고창 발생
		
		if (memberidtypepwCheck == 1) {
			
			MemberDto memberDto = memberDao.memberdetailDao(memberid); // 로그인 한 아이디의 모든 정보를 dto로 반환
			
			// 비밀번호 체크하는 method 호출
			HttpSession session = request.getSession();		// session
			
			String memberId = memberDto.getMemberid();
			String memberName = memberDto.getMembername();
			String memberType = memberDto.getMembertype();
			
			session.setAttribute("sessionId", memberId);
			session.setAttribute("sessionName", memberName);	
			session.setAttribute("sessionType", memberType);	// session에 올림
			
			model.addAttribute("memberid", memberId);   
			model.addAttribute("membername", memberName);
			model.addAttribute("membertype", memberType);	// loginOk로 보내기 위해서 model에 담아서 보냄
			
		}
		
		return "/member/memberLoginOk";
	}
	
	
	@RequestMapping (value = "include/policy")
	public String policy() {
		
		return "/include/policy";
	}
	
	
	@RequestMapping (value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();	// 세션 삭제 => 로그아웃
		
		return "index";
	}
	
	
	@RequestMapping (value = "/nonmember_enter")
	public String nonmember_enter() {
		
		return "nonmember_home";
	}
	
	
	@RequestMapping (value = "/academy_introduction")
	public String academy_introduction() {
		
		return "academy_introduction";
	}
	
	
	@RequestMapping (value = "/academy_location")
	public String academy_location() {
		
		return "academy_location";
	}
	
}
