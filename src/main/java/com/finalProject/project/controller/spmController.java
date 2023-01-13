package com.finalProject.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalProject.project.model.spmVO;
import com.finalProject.project.service.SpmService;

@Controller
public class spmController {
	@Autowired
	private SpmService service;
	
	@RequestMapping("/spm/spmMenu")
	public String spmMenu() {
		return "supplements/supplementMenu1";
	}
	
	@RequestMapping("/spm/spmCtg/{spmCtg}")
	public String supplementA(@PathVariable String spmCtg, Model model) {
		ArrayList<spmVO>spmList=service.ctgListSpm(spmCtg);
		model.addAttribute("spmList",spmList);
		return "supplements/supplementA";
	}
	
	@RequestMapping("/supplements/spmDetail/{spmName}")
	public String detailSpm(@PathVariable String spmName, Model model) {
		
		spmVO spm=service.spmDetail(spmName);
		model.addAttribute("spm",spm);
		return "supplements/spmDetail";
	}
	
	
}
