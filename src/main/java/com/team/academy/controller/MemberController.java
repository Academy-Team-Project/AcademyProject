package com.team.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping (value = "member/memberModify")
	public String memberModify() {
		
		return "/member/memberModify";
	}
	
	
	@RequestMapping (value = "member/member_list")
	public String member_list() {
		
		return "/member/member_list";
	}
	
	
	@RequestMapping (value = "member/memberJoin")
	public String memberJoin() {
		
		return "/member/memberJoin";
	}
	
	@RequestMapping (value = "/joinOk")
	public String joinOk() {
		
		return "redirect:/member/member_list";
	}
}
