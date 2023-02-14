package com.finalProject.project.controller;

import java.util.ArrayList;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalProject.project.model.ExerciseInfoVO;
import com.finalProject.project.service.ExerciseInfoService;

@Controller
public class ExerciseController {
	@Autowired
	ExerciseInfoService service;
	
	// TODO index 연결

	@RequestMapping("/exercise/exerciseInfo")
	public String exerciseInfo(Model model) {

		return "exercise/exerciseInfo";
	}
	@ResponseBody
	@RequestMapping("/exercise/exerciseFirstList/{pNum}")
	public String exerciseFirstList(@PathVariable int pNum, Model model) {

		ArrayList<ExerciseInfoVO> exList1 = service.firstListInfo(pNum);
		JSONObject obj = new JSONObject();

		obj.put("exList1", exList1);
		obj.put("exList2", exList1);
		System.out.println(obj.toString());
		return obj.toString();
	}
	@RequestMapping("/exercise/detailViewRoutineInfo/{routineNo}")
	public String detailViewRoutineInfo(@PathVariable ("routineNo") String routineNo,
														  Model model) {
		ExerciseInfoVO routine = service.detailViewRoutineInfo(routineNo);
		model.addAttribute("routine", routine);
		return "exercise/detailRoutineInfo";
	}
	
	

	
}
