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
	public String healthcare(Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
		voList = service.hcdOutput(memId);
		model.addAttribute("voList",voList);
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
	@RequestMapping("/healthcare/weightGraph")
	public String weightGraph(Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
		JSONObject obj = new JSONObject();
		
		map.put("memId", memId);
		map.put("hcdName", "체중");
		map.put("count", 7);
		voList =service.graphListView(map);
		if(voList.size() ==0){
			obj.put("voList", "noData");
		}
		else{
			obj.put("voList", voList);
		}
			
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/bloodSGraph")
	public String bloodSGraph(Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
		JSONObject obj = new JSONObject();

		map.put("memId", memId);
		map.put("hcdName", "혈당");
		map.put("count", 7);
		voList =service.graphListView(map);
		
		if(voList.size() == 0){
			obj.put("voList", "noData");
		}
		else{
			obj.put("voList", voList);
		}
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/bloodPGraph")
	public String bloodPGraph(Model model, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
		ArrayList<HealthcareGraphVO> voList2 = new ArrayList<HealthcareGraphVO>();
		ArrayList<HashMap<String,Object>> hashMaps = new ArrayList<HashMap<String,Object>>();
		JSONObject obj = new JSONObject();

		map.put("memId", memId);
		map.put("count", 7);
		map.put("hcdName", "수축기혈압");
		voList =service.graphListView(map);

		map.put("hcdName", "이완기혈압");
		voList2 =service.graphListView(map);

		if(voList.size() == 0 && voList2.size() ==0){
			obj.put("voList", "noData");
		}
		else{
			for(int i= 0; i <voList.size(); i++){
				HashMap<String,Object> BMIMap = new HashMap<String,Object>();
				BMIMap.put("hcdName1", "수축기혈압");
				BMIMap.put("hcdValue1", Double.parseDouble(voList.get(i).getHcdValue()));
				BMIMap.put("hcdJoinDate1", voList.get(i).getHcdJoinDate());

				BMIMap.put("hcdName2", "이완기혈압");
				BMIMap.put("hcdValue2", Double.parseDouble(voList2.get(i).getHcdValue()));
				BMIMap.put("hcdJoinDate2", voList2.get(i).getHcdJoinDate());
				hashMaps.add(BMIMap);
				
			}
			obj.put("voList", hashMaps);
		}
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/topTodayList")
	public String topTodayList(@RequestParam String date, HttpSession session) {

		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("date", date);
		map.put("memId", memId);
		ArrayList<HashMap<String,Object>> todayList = service.topTodayList(map);
		JSONObject obj = new JSONObject();

		obj.put("todayList", todayList);
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/dateCount")
	public String dateCount(@RequestParam String date, HttpSession session) {

		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("date", date);
		map.put("memId", memId);
		ArrayList<HashMap<String,Object>> dateCountList = service.dateCount(map);
		JSONObject obj = new JSONObject();

		obj.put("dateCountList", dateCountList);
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/calendarMyList")
	public String calendarMyList(@RequestParam String date,HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		System.out.println(date);
		map.put("memId", memId);
		map.put("date", date);
		ArrayList<HashMap<String,Object>> myList = service.calendarMyList(map);
		JSONObject obj = new JSONObject();

		obj.put("myList", myList);
		
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/myListItemCheck")
	public String myListItemCheck(@RequestParam("itemNo") int itemNo,@RequestParam("changeNum") int changeNum,HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("memId", memId);
		map.put("itemNo", itemNo);
		map.put("changeNum", changeNum);
		System.out.println(map);
		service.itemCheck(map);
		
		return "success";
	}

	@ResponseBody
	@RequestMapping("/healthcare/exerciseMyList")
	public String exerciseMyList(@RequestParam HashMap<String,Object> map,HttpSession session) {

		String memId = (String)session.getAttribute("sid");
		ArrayList<HashMap<String,Object>> aList = service.exerciseMyList(memId);
		JSONObject obj = new JSONObject();

		obj.put("aList", aList);

		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/exerciseRecommendList")
	public String exerciseRecommendList(@RequestParam("arrItem") ArrayList<String> arrItem) {
		

		ArrayList<HashMap<String,Object>> aList = service.exerciseRecommendList(arrItem);
		JSONObject obj = new JSONObject();
		obj.put("aList", aList);

		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("/healthcare/createMyList")
	public void createMyList(@RequestParam HashMap<String,Object> map, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		map.put("memId", memId);
		service.createMyList(map);
	}

	@ResponseBody
	@RequestMapping("/healthcare/deleteList")
	public String deleteList(@RequestParam HashMap<String,Object> map, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		System.out.println(map.get("elNo"));
		int elNo = Integer.parseInt((String)map.get("elNo"));
		map.put("elNo", elNo);
		map.put("memId", memId);
		service.deleteList(map);

		return"success";
	}

	@ResponseBody
	@RequestMapping("/healthcare/deleteMyList")
	public String deleteMyList(@RequestParam HashMap<String,Object> map, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		System.out.println(map.get("elMyNo"));
		int elMyNo = Integer.parseInt((String)map.get("elMyNo"));
		map.put("elMyNo", elMyNo);
		map.put("memId", memId);
		service.deleteMyList(map);

		return"success";
	}
	
}

