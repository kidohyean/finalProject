package com.finalProject.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.project.model.AggregationVO;
import com.finalProject.project.model.PagerVO;
import com.finalProject.project.service.CommunityService;


@Controller
public class CommunityController {
	@Autowired
	private CommunityService service;

	@RequestMapping("/community/list/{num}")
	public String CommunityPage(@PathVariable("num") int num,
								@RequestParam("selectBox") @Nullable String optChoice,Model model) {
		// 페이지 import 부분
		String url ="/WEB-INF/views/communi/list.jsp";
		model.addAttribute("url", url);
		System.out.println("여여여여여ㅕ여여여여여여여여여여여ㅕㅇoptChoice"+optChoice);
		PagerVO page = new PagerVO();
		ArrayList<AggregationVO> voList = new ArrayList<AggregationVO>();
		HashMap map = new HashMap<>();
		page.setNum(num);
		page.setDataCount(service.dataCount());  
		map.put("displayPost", page.getDisplayPost());
		map.put("postNum", page.getPostNum());
		voList = service.listAllAggre(map);
		
		model.addAttribute("comList", voList);   
		model.addAttribute("page",page);
		model.addAttribute("select", num);
		//page 변환
		String listPage = "list";
		model.addAttribute("listPage",listPage);

		return "communi/community";
	}
	@RequestMapping("/community/myList/{num}")
	public String CommunityPage(@PathVariable("num") int num,
								HttpSession session,Model model) {
		// 페이지 import 부분
		String url ="/WEB-INF/views/communi/list.jsp";
		model.addAttribute("url", url);
		PagerVO page = new PagerVO();
		ArrayList<AggregationVO> voList = new ArrayList<AggregationVO>();
		HashMap map = new HashMap<>();
		
		String userId = "jin";
		page.setNum(num);
		page.setDataCount(service.myDataCount(userId));  

		map.put("displayPost", page.getDisplayPost());
		map.put("postNum", page.getPostNum());
		map.put("memId", userId);
		voList = service.myListAllAggre(map);

		model.addAttribute("comList", voList);   
		model.addAttribute("page",page);
		model.addAttribute("select", num);
		//page 변환
		String listPage = "myList";
		model.addAttribute("listPage",listPage);
		return "communi/community";
	}
	@RequestMapping("/community/{mode}")
	public String CommunityInsertPage(@PathVariable String mode,Model model) {
		//String mode = "pageType";
		String url ="/WEB-INF/views/communi/write.jsp";
		model.addAttribute("url", url);
		model.addAttribute("mode",mode);
		return "communi/community";
	}

}
