package com.finalProject.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalProject.project.model.AggregationVO;
import com.finalProject.project.model.commentVO;
import com.finalProject.project.service.CommunityService;



@Controller
public class DetailController {
@Autowired
private CommunityService service;
     @ResponseBody
    @RequestMapping("/community/insertAggregation")
	public String insertAggregation(AggregationVO Aggre,
									HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		Aggre.setMemId(memId);
    	service.insertAggregation(Aggre);
		return "success";
	}
     
     
	@RequestMapping("/community/detailViewAggre/{agNum}")
	public String detailViewAggre(@PathVariable("agNum") int agNum, Model model) {
		
		AggregationVO Aggre = service.detailViewAggre(agNum);
		service.viewsAggregation(agNum);
		String url ="/WEB-INF/views/communi/listdetailView.jsp";
		model.addAttribute("Aggre", Aggre);
		model.addAttribute("url", url);

		//comment
		ArrayList<commentVO> cvoList = service.listAllComment(agNum);
		model.addAttribute("cvoList",cvoList);

		return "communi/community";
	}
	@RequestMapping("/community/insertComment")
	public String insertComment(@RequestParam("agNum") int agNum,
								@RequestParam("cContent") String cContent,
								HttpSession session, Model model) {
		//System.out.println(agNum);
		commentVO cVo = new commentVO();
		cVo.setAgNum(agNum);
		cVo.setcContent(cContent);
		String memId = (String) session.getAttribute("sid");
		cVo.setMemId(memId);
		service.insertComment(cVo);
		
		return "redirect:/community/detailViewAggre/"+agNum;
	}
     //TODO 대댓글 작성 시간 남으면
	 //TODO 댓글 대댓글 수정 시간 남으면
	 //TODO 댓글 대댓글 삭제
    @RequestMapping("/community/replyComment")
	public String replyComment(@RequestParam("agNum") int agNum,
								@RequestParam("cId") int cId,
								@RequestParam("replyCmt") String cContent,
								HttpSession session, Model model) {
		
		
		return "redirect:/community/detailViewAggre/"+agNum;
	}
		
	

}
