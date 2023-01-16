package com.finalProject.project.controller;

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
	public String detailViewRoutineInfo(@PathVariable String routineNo,
														  Model model) {
		// 서비스에게 상품번호 전달하고 상품 정보 받아옴
		ExerciseInfoVO routine = service.detailViewRoutineInfo(routineNo);
		model.addAttribute("routine", routine);
		return "exercise/detailRoutineInfo";
	}
}
