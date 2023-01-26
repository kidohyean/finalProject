package com.finalProject.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalProject.project.model.HealthcareGraphVO;
import com.finalProject.project.service.HealthcareService;

@Controller
public class HealthcareController {
	
	@Autowired
	HealthcareService service;

	@RequestMapping("/community/healthcare")
	public String healthcare(Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
		voList = service.hcdOutput(memId);
		model.addAttribute("voList",voList);
		System.out.println(voList.toString());
		return "/healthcare/healthcare";
	}
	@ResponseBody
	@RequestMapping("/healthcare/healthInput")
	public String HealthInput(@RequestParam HashMap<String, Object> param,Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("memId", memId);
		map.put("hcdName", param.get("hcdName"));
		map.put("hcdValue", param.get("hcdValue"));
		service.hcdInput(map);

		return "success";
	}
	@ResponseBody
	@RequestMapping("/healthcare/healthInput2")
	public String HealthInput2(@RequestParam HashMap<String, Object> param,
							Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		System.out.println(param.get("hcdName1"));
		map.put("memId", memId);
		map.put("hcdName", param.get("hcdName1"));
		map.put("hcdValue", param.get("hcdValue1"));
		service.hcdInput(map);
		map.put("hcdName", param.get("hcdName2"));
		map.put("hcdValue", param.get("hcdValue2"));
		service.hcdInput(map);

		return "success";
	}

	@ResponseBody
	@RequestMapping("/healthcare/WeightGraph")
	public String WeightGraph(@RequestParam("num") int num,Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
		ArrayList<HealthcareGraphVO> voList2 = new ArrayList<HealthcareGraphVO>();
		ArrayList<HashMap<String,Object>> hashMaps = new ArrayList<HashMap<String,Object>>();
		JSONObject obj = new JSONObject();
		
		map.put("memId", memId);
		if(num == 1){
			map.put("hcdName", "몸무게");
			map.put("count", 7);
			voList =service.graphListView(map);
			obj.put("voList", voList);
			
		}
		
		else if(num == 2){
			int height =Integer.parseInt(service.heightOutput(memId));
			map.put("hcdName", "몸무게");
			map.put("count", 7);
			
			float heightM = (float)height /100;
			voList =service.graphListView(map);
			for(int i= 0; i <voList.size(); i++){
				int weight = Integer.valueOf(voList.get(i).getHcdValue());
				float BMI = weight /(heightM * heightM);
				System.out.println(service.heightOutput(memId));
				HashMap<String,Object> BMIMap = new HashMap<String,Object>();
				BMIMap.put("hcdName", "BMI");
				BMIMap.put("hcdValue", BMI);
				BMIMap.put("hcdJoinDate", voList.get(i).getHcdJoinDate());
				hashMaps.add(BMIMap);
				
			}
			
			obj.put("voList", hashMaps);
		}
		else if(num ==3){
			map.put("count", 7);
			map.put("hcdName", "수축기혈압");
			voList =service.graphListView(map);
			map.put("hcdName", "이완기혈압");
			voList2 =service.graphListView(map);
			for(int i= 0; i <voList.size(); i++){
				HashMap<String,Object> BMIMap = new HashMap<String,Object>();
				BMIMap.put("hcdName1", "수축기혈압");
				BMIMap.put("hcdValue1", Integer.valueOf(voList.get(i).getHcdValue()));
				BMIMap.put("hcdJoinDate1", voList.get(i).getHcdJoinDate());

				BMIMap.put("hcdName2", "이완기혈압");
				BMIMap.put("hcdValue2", Integer.valueOf(voList2.get(i).getHcdValue()));
				BMIMap.put("hcdJoinDate2", voList2.get(i).getHcdJoinDate());
				hashMaps.add(BMIMap);
				
			}
			obj.put("voList", hashMaps);
		}

		if(num == 4){
			map.put("hcdName", "혈당");
			map.put("count", 24);
			voList =service.graphListView(map);
			obj.put("voList", voList);
			
		}
		return obj.toString();
	}
}
