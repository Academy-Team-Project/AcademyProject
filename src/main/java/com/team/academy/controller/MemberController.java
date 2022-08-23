package com.team.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping (value = "member/memberModify")
	public String memberModify() {
		
		return "/member/memberModify";
	}
}
