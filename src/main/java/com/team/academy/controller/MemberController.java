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
	
	// 회원 리스트 출력
	@RequestMapping (value = "/member/member_list")
	public String member_list(HttpServletRequest request, Model model) {
		
		String searchKeyword = request.getParameter("searchKeyword");
		String searchOption = request.getParameter("searchOption");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
//		[회원 검색 파트]		
		ArrayList<MemberDto> memberDto = null;
		
		if (searchKeyword == null) { 	// 검색값이 없는 경우 모든 리스트값을 출력
			memberDto = memberDao.memberlistDao();
		}
		else if (searchOption.equals("memberType")) {
			memberDto = memberDao.memberTypeSearch(searchKeyword);
		}
		else if (searchOption.equals("memberName")) {
			memberDto = memberDao.memberNameSearch(searchKeyword);
				}
		
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
	
	
	// 회원 정보 수정
	@RequestMapping (value = "/member/memberModify")
	public String memberModify(HttpServletRequest request, Model model) {
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		HttpSession session = request.getSession();		// session에 올라와 있는 값을 뽑아냄
		String sessionId = (String) session.getAttribute("sessionId");
		
		MemberDto memberDto = memberDao.memberdetailDao(sessionId);	// 로그인한 아이디의 모든 정보를 dto로 반환(server의 session에 값이 있음)
		
		model.addAttribute("memberDto", memberDto);
		
		return "/member/memberModify";
	}
	
	
	// 회원 정보 수정 후 작동
	@RequestMapping (value = "/member/memberModifyOk", method = RequestMethod.POST)
	public String memberModifyOk(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();		// session

		String memberid = request.getParameter("memberid");	// 아이디(유일값)로 데이터 검색해서 해당 정보를 수정하기 위해서 필요
		String membername = request.getParameter("membername");
		String memberpw = request.getParameter("memberpw");
		String memberbirth = request.getParameter("memberbirth");
		String membertel = request.getParameter("membertel");
		String memberemail = request.getParameter("memberemail");
		String memberaddress = request.getParameter("memberaddress");	// 수정하기 위해 입력한 내용들
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		memberDao.membermodifyDao(membername, memberpw, memberbirth, membertel, memberemail, memberaddress, memberid);		// 수정된 정보
		
		MemberDto memberDto = memberDao.memberdetailDao(memberid);	// 정보를 수정한 아이디의 모든 정보를 넘겨줌
		
		model.addAttribute("memberDto", memberDto);
		
		return "/member/memberModifyOk"; 
	}
	
	
	// 회원 상세보기 (관리자만)
	@RequestMapping (value = "/member/memberView")
	public String memberView(HttpServletRequest request, Model model) {
		
		String memberid = request.getParameter("memberid");		// 해당 회원의 유일값이 id를 뽑아서 넘김
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		MemberDto memberDto = memberDao.memberviewDao(memberid);
		model.addAttribute("memberDto", memberDto);		// 반환(model에 담아서 배송서비스)
		model.addAttribute("memberviewid", memberDto.getMemberid());
		
		return "/member/memberView";
	}
	
	
	@RequestMapping (value = "/member/memberDelete")
	public String memberDelete(HttpServletRequest request, Model model) {
		
		String memberid = request.getParameter("memberid");		// 삭제할 회원의 고유값인 아이디 가져와서 넘기기
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		memberDao.memberdeleteDao(memberid);
			
		return "redirect:member_list";
	}
}
