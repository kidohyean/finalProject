package com.finalProject.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalProject.project.service.CommunityService;


@Controller
public class CommunityController {
	@Autowired
	private CommunityService service;

	
	@RequestMapping("/CommunityController")
	public String CommunityController() {
		return "communi/community";
	}
	
	
}
