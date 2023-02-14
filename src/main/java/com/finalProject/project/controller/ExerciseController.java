package com.finalProject.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.finalProject.project.model.PagerVO;
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
	@RequestMapping("/exercise/exerciseRankList/{pNum}")
	public String exerciseRankList(@PathVariable int pNum, Model model) {

		ArrayList<ExerciseInfoVO> exList = service.rankListInfo(pNum);
		JSONObject obj = new JSONObject();

		obj.put("exListR", exList);
		System.out.println(obj.toString());
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/exercise/exerciseItemList/{pNum}/{num}")
	public String exerciseItemList(@PathVariable int pNum,@PathVariable int num, Model model) {
		PagerVO page = new PagerVO();
		HashMap<String,Object> map = new HashMap<String,Object>();
		page.setNum(num);
		page.setDataCount(service.itemListCount(pNum));  
		map.put("displayPost", page.getDisplayPost());
		map.put("postNum", page.getPostNum());
		map.put("pNum", pNum);
		ArrayList<ExerciseInfoVO> exList = service.itemListInfo(map);
		JSONObject obj = new JSONObject();

		obj.put("exListI", exList);
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
