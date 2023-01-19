package com.finalProject.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String healthcare(Model model) {
		return "/healthcare/healthcare";
	}

	@ResponseBody
	@RequestMapping("/healthcare/WeightGraph")
	public String WeightGraph(@RequestParam("num") int num,Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
		ArrayList<HashMap<String,Object>> hashMaps = new ArrayList<HashMap<String,Object>>();
		JSONObject obj = new JSONObject();
		
		map.put("memId", memId);
		if(num == 1){
			map.put("hcdName", "체중");
			voList =service.graphListView(map);
			obj.put("voList", voList);
			
		}
		
		else if(num == 2){
			map.put("hcdName", "체중");
			int height = 180;
			float heightM = (float)height /100;
			for(int i= 0; i <service.graphListView(map).size(); i++){
				int weight = service.graphListView(map).get(i).getHcdValue();
				float BMI = weight /(heightM * heightM);
				HashMap<String,Object> BMIMap = new HashMap<String,Object>();
				BMIMap.put("hcdName", "BMI");
				BMIMap.put("hcdValue", BMI);
				BMIMap.put("hcdJoinDate", service.graphListView(map).get(i).getHcdJoinDate());
				hashMaps.add(BMIMap);
				
			}
			
			obj.put("voList", hashMaps);
		}
		else if(num ==3){

		}
		System.out.println(obj.toString());
		return obj.toString();
	}
}
