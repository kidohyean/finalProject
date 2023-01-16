package com.finalProject.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthcareController {

	@RequestMapping("/community/healthcare")
	public String healthcare(Model model) {
		return "/healthcare/healthcare";

}
}
