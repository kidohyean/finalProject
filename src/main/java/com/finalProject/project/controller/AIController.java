package com.finalProject.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.finalProject.project.service.ChatbotService;
import com.finalProject.project.service.STTService;
import com.finalProject.project.service.TTSService;



@Controller
public class AIController {
    
	private STTService sttService;
	private TTSService ttsService;
	private ChatbotService chatService;
	
	// 생성자 기반 DI(의존성 주입)로 변경
	@Autowired
	public AIController( STTService sttService, TTSService ttsService,
						ChatbotService chatService) {		
		this.sttService = sttService;
		this.ttsService = ttsService;
		this.chatService = chatService;
	}

    // STT : 음성 -> 텍스트 변환 AI
	@RequestMapping("/sttForm2")
	public String sttForm2() {
		return "sttResult2";
	}

    // TTS : 텍스트 -> 음성 변환 AI
	@RequestMapping("/ttsForm")
	public String ttsForm() {
		return "ttsResult";
	}


    // 기본 / 이미지 / 멀티링크 답변 가능 채팅
	@RequestMapping("/chatbotForm3")
	public String chatbotForm3() {		
		return "chatbotForm3";
	}

}
