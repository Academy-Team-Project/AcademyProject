package com.team.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LessonController {
	
	@RequestMapping (value = "/lesson/lesson_list")
	public String lesson_list() {
		
		return "/lesson/lesson_list";
	}	// 수업관리 메뉴를 선택하면 동작하는 화면 반환
	
	
	@RequestMapping (value = "/lesson/mylesson_list")
	public String mylesson_list() {
		
		return "/lesson/mylesson_list";
	}	// 수업관리 메뉴를 선택하면 동작하는 화면 반환
	

}
