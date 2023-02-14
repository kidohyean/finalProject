package com.finalProject.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalProject.project.model.ExerciseInfoVO;
import com.finalProject.project.service.ExerciseInfoService;

@Controller
public class ExerciseController {
	@Autowired
	ExerciseInfoService service;
	// TODO index 연결
	
	@RequestMapping("/exercise/detailViewRoutineInfo/{routineNo}")
	public String detailViewRoutineInfo(@PathVariable ("routineNo") String routineNo,
														  Model model) {
		ExerciseInfoVO routine = service.detailViewRoutineInfo(routineNo);
		model.addAttribute("routine", routine);
		return "exercise/detailRoutineInfo";
	}
	
	

	
}
