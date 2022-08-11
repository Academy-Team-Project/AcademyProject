package com.team.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	@RequestMapping (value = "/")
	public String login() {
		
		return "index";
	}	// 처음 서버 들어오자마자 동작하는 화면 반환
	
	@RequestMapping (value = "/index")
	public String index() {
		
		return "index";
	}	// 링크로 동작하는 화면 반환

}
