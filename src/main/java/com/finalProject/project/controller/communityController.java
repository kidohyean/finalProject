package com.finalProject.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class communityController {

	
	@RequestMapping("/communityController")
	public String communityController() {
		return "communi/community";
	}
}
