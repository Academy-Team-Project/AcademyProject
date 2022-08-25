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
import com.team.academy.dto.MemberDto;

@Controller
public class MemberController {
	
	@Autowired		// 자동 bean 생성 및 주입, 자동 초기화
	private SqlSession sqlSession;

	@RequestMapping (value = "member/memberModify")
	public String memberModify() {
		
		return "/member/memberModify";
	}
	
	
	@RequestMapping (value = "/member/member_list")
	public String member_list(Model model) {
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		ArrayList<MemberDto> memberDto = memberDao.memberlistDao();
		
		model.addAttribute("memberlist", memberDto);
		
		
		return "/member/member_list";
	}
	
	// 회원 관리 등록버튼 누르고 작동할 화면
	@RequestMapping (value = "member/memberJoin")
	public String memberJoin() {
		
		return "/member/memberJoin";
	}
	
	// 회원 가입 등록버튼 누른 이후 작동
	@RequestMapping (value = "/member/memberJoinOk", method = RequestMethod.POST )
	public String memberJoinOk(HttpServletRequest request, Model model) {
		
		String membertype = request.getParameter("membertype");
		String memberid = request.getParameter("memberid");
		String membername = request.getParameter("membername");
		String memberpw = request.getParameter("memberpw");
		String memberbirth = request.getParameter("memberbirth");
		String membertel = request.getParameter("membertel");
		String memberemail = request.getParameter("memberemail");
		String memberaddress = request.getParameter("memberaddress");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);	// mapper 가져오기
		ArrayList<MemberDto> memberDto = memberDao.memberlistDao();
		
		
		int memberidCheck = memberDao.memberidCheckDao(memberid);	// 아이디 존재 여부 체크(존재하면 1, 아니면 0)
		
		if (memberidCheck == 0) {	// 아이디가 중복되지 않을 때만 가입을 시킴 
			memberDao.memberJoinDao(membertype, memberid, membername, memberpw, memberbirth, membertel, memberemail, memberaddress);
			
			model.addAttribute("membertype", membertype);	// memberJoinOk로 보내기 위해서 model에 담아서 보냄
			model.addAttribute("memberid", memberid);
			model.addAttribute("membername", membername);
			model.addAttribute("memberpw", memberpw);
			model.addAttribute("memberbirth", memberbirth);
			model.addAttribute("membertel", membertel);
			model.addAttribute("memberemail", memberemail);
			model.addAttribute("memberaddress", memberaddress);
		}
		model.addAttribute("memberidCheck", memberidCheck);	// checkId 값이 1(아이디 존재) 또는 0(아이디 미존재)이 전송
		// if, else문에 해당구문 다 넣거나 else 빼고 if문 빠져나와서 한번만 쓰거나 다 가능	
		
		model.addAttribute("memberlist", memberDto);
		
		return "/member/memberJoinOk";
	}
	
	
	
	
	
}
