package com.team.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping (value = "/notice/notice_list")
	public String notice_list() {
		
		return "/notice/notice_list";
	}	// 메인 공지사항 메뉴로 이동하는 화면 반환
	
}
