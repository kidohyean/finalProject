package com.finalProject.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalProject.project.model.AggregationVO;
import com.finalProject.project.service.CommunityService;



@Controller
public class detailController {
@Autowired
private CommunityService service;
     @ResponseBody
     @RequestMapping("/community/insertAggregation")
	public String insertAggregation(AggregationVO Aggre) { 
    	 service.insertAggregation(Aggre);
		return "success";
	}
     
     
     @RequestMapping("/community/detailViewAggre/{agName}")
	 	public String detailViewAggre(String agName, Model model) {
	 		// 상품번호 전달하고 해당 상품 상세 정보 받아오기 (1개 상품에 관한 정보)
	 		AggregationVO Aggre = service.detailViewAggre(agName);
	 		String url ="/WEB-INF/views/communi/listdetailView.jsp";
	 		model.addAttribute("Aggre", Aggre);
	 		model.addAttribute("url", url);
	 		return "communi/community";
	 	}
     
     
		
	

}
