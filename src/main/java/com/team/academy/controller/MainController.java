package com.team.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping (value = "/")
	public String login() {
		
		return "index";
	}	// 처음 서버 들어오자마자 동작하는 화면 반환
	
	@RequestMapping (value = "/index")
	public String index() {
		
		return "index";
	}	// 링크로 동작하는 화면 반환

/*	
	@RequestMapping (value = "/notice/notice_list")
	public String notice_list() {
		
		return "/notice/notice_list";
	}	// 메인 공지사항 메뉴로 이동하는 화면 반환
*/	
	
	@RequestMapping (value = "include/policy")
	public String policy() {
		
		return "/include/policy";
	}
	
	@RequestMapping (value = "/logout")
	public String logout() {
		
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