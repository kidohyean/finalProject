package com.finalProject.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.finalProject.project.model.AggregationVO;
import com.finalProject.project.model.PagerVO;
import com.finalProject.project.service.CommunityService;



@Controller
public class CommunityController {
	@Autowired
	private CommunityService service;


	//전체 게시글 페이지
	@RequestMapping("/community/list/{num}")
	public String communityPage(@PathVariable("num") int num,
								@RequestParam("selectBox") @Nullable String optChoice,Model model) {
		// 페이지 import 부분
		String url ="/WEB-INF/views/communi/list.jsp";
		model.addAttribute("url", url);
		PagerVO page = new PagerVO();
		ArrayList<AggregationVO> voList = new ArrayList<AggregationVO>();
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		HashMap<String,Object> countMap = new HashMap<String,Object>();
		countMap.put("type", "ALL");
		page.setNum(num);
		page.setDataCount(service.dataCount(countMap));  
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
	//내 게시글만 보는 페이지
	@RequestMapping("/community/myList/{num}")
	public String communityPageMyList(@PathVariable("num") int num,
								HttpSession session,Model model) {
		// 페이지 import 부분
		String url ="/WEB-INF/views/communi/list.jsp";
		model.addAttribute("url", url);
		PagerVO page = new PagerVO();
		ArrayList<AggregationVO> voList = new ArrayList<AggregationVO>();
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		HashMap<String,Object> countMap = new HashMap<String,Object>();
		String userId = (String)session.getAttribute("sid");
		page.setNum(num);
		countMap.put("type", "memId");
		countMap.put("keyword", userId);
		page.setDataCount(service.dataCount(countMap)); 

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
	
	 // 검색 기능
	 @RequestMapping("/community/Searchlist/{num}")
	   public String communityPageSearch(@PathVariable("num") int num,
		          	   @RequestParam HashMap<String,Object>param,Model model){
		 
		// 페이지 import 부분
		 String url ="/WEB-INF/views/communi/list.jsp";
		 model.addAttribute("url", url);
		 PagerVO page = new PagerVO();
		 ArrayList<AggregationVO> voList = new ArrayList<AggregationVO>();
		 HashMap<String,Object> map = new HashMap<String,Object>();
		 
		 page.setNum(num);
		 page.setDataCount(service.dataCount(param)); 
		 map.put("type", param.get("type"));
		 map.put("keyword", param.get("keyword"));  
		 map.put("displayPost", page.getDisplayPost());
	     map.put("postNum", page.getPostNum());
			
		 voList = service.SearchlistAllAggre(map);
		   
		 model.addAttribute("comList",voList);
		 model.addAttribute("page",page);
		 model.addAttribute("select", num);
		   
		   return "communi/community";
		   
	   }

	//등록 페이지 이동
	@RequestMapping("/community/insertPage")
	public String communityInsertPage(Model model) {
		String mode = "insertPage";
		String url ="/WEB-INF/views/communi/write.jsp";
		model.addAttribute("url", url);
		model.addAttribute("mode",mode);

		return "communi/community";
	}

	// 수정 페이지 이동
	@RequestMapping("/community/edit/{agNum}")
	public String communityEditPage(@PathVariable int agNum,Model model) {
		String mode = "edit";
		String url ="/WEB-INF/views/communi/write.jsp";
		System.out.println(mode);
		model.addAttribute("url", url);
		model.addAttribute("mode",mode);
			AggregationVO vo = new AggregationVO();
			vo = service.detailViewAggre(agNum);
			model.addAttribute("vo", vo);
			model.addAttribute("agNum",agNum);
		return "communi/community";
	}
	@ResponseBody
	@RequestMapping("/community/UpdateAggregation")
   public String UpdateAggregation(@RequestParam("agName") String agName,
   									@RequestParam("agText") @Nullable String agText,
									@RequestParam("agNum") String agNum) { 
	HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("agName", agName);
		map.put("agText", agText);
		map.put("agNum", agNum);
		service.updateAggregation(map);
	   return "success";
   }
   //게시글 삭제
   //TODO 게시글 삭제시 댓글도 같이 삭제
   @RequestMapping("/community/delete/{agNum}")
   public String deleteAggregation(@PathVariable("agNum") int agNum) { 
		System.out.println(agNum);
		service.deleteAggComment(agNum);
		service.deleteAggregation(agNum);
		return "redirect:/community/list/1";
   }
   
 
}
