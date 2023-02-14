package com.finalProject.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	// TODO index 연결
	@RequestMapping("/")
	public String main(){
		return "index";
	}
	
	

	@RequestMapping("/chatBotModal")
	public String chatBotModal(){
		return "/chatbot/chatBot";
	}
}

