package com.finalProject.project.controller;

import java.util.ArrayList;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.project.model.AggregationVO;
import com.finalProject.project.service.CommunityService;


@Controller
public class CommunityController {
	@Autowired
	private CommunityService service;

	@RequestMapping("/community/list/{num}")
	public String CommunityPage(Model model) {
		String url ="/WEB-INF/views/communi/list.jsp";
		model.addAttribute("url", url);
		ArrayList<AggregationVO> vo = new ArrayList<AggregationVO>();
		vo = service.listAllAggre();
		for (AggregationVO aggregationVO : vo) {
			System.out.println(aggregationVO.getAgName());
		}
		model.addAttribute("comList",vo);
		return "communi/community";
	}

	@RequestMapping("/community/insertPage")
	public String CommunityInsertPage(Model model) {
		String mode = "pageType";
		String url ="/WEB-INF/views/communi/write.jsp";
		System.out.println(mode);
		model.addAttribute("url", url);
		return "communi/community";
	}

	@RequestMapping("/community/insert")
	public String CommunityInsert(Model model) {
		String url ="/WEB-INF/views/communi/list.jsp";
		model.addAttribute("url", url);
		return "communi/community";
	}

	@RequestMapping("/community/listdetail")
	public String listdetail(Model model) {
		String url ="/WEB-INF/views/communi/listdetailView.jsp";
		model.addAttribute("url", url);
		return "communi/community";
	}
	
}
