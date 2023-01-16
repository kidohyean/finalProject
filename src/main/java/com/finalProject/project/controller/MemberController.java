package com.finalProject.project.controller;

import java.lang.reflect.Member;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.project.model.MemberVO;
import com.finalProject.project.service.MemberService;



@Controller
public class MemberController {
	@Autowired
	 MemberService service;
	
	
	// 로그인 폼 열기
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	// 비밀번호 암호화하기 이전 로그인 처리 방식
	// 로그인 처리 : id와 pwd 전달 받아서 로그인 인증 완료 후 세션 설정
//	@ResponseBody
//	@RequestMapping("/member/login")
//	public String loginCheck(@RequestParam HashMap<String, Object> param,
//												HttpSession session) {
//		// 로그인 체크 결과 
//		String memId = service.loginCheck(param);
//		String result = "fail";
//		
//		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
//		if(memId != null) {
//			//로그인 성공하면 세션 변수 지정
//			session.setAttribute("sid", memId);
//			result = "success";
//		}
//		
//		return result;
//	}
	
	// 비밀번호 암호화한 경우의 로그인 처리 방식
	@ResponseBody
	@RequestMapping("/member/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
												HttpSession session) {
		// 로그인 체크 결과 
		String result = service.loginCheck(param); // result : "success" 또는 "fail"
		
		
		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
		// 서비스에서 "success" 반환받았으면
		if(result.equals("success")) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("id"));			
		}
		
		return result;
	}
	
	
	
	
	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		//세션 무효화
		session.invalidate();		
		return "redirect:/"; // index로 포워딩 -> ProductController에 있는 @RequestMapping("/") 
	}
	
	// 회원가입 폼 열기
	@RequestMapping("/member/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	
	// 회원가입
	@RequestMapping("/member/insert")
	public String insert(MemberVO vo,
									  @RequestParam("memHp1") String memHp1)
									  {
		vo.setMemHp(memHp1);
		service.insertMember(vo);
		return "member/loginForm"; // 회원 가입 후 로그인 폼으로 이동
	}
	//아이디 중복체크
	@ResponseBody
	@RequestMapping("/member/memIdCheck")
	public String memIdCheck(@RequestParam("memId") String memId) {
		// 서비스 호출하고 DB에 prdNo 존재하면 prdNo 받고, 존재하지 않으면 null 받음
		String memId_result = service.memIdCheck(memId);
		
		String result = "use";
		if(memId_result != null)  // 존재한다면
			result = "no_use";
		
		return result;
	}
	
	@RequestMapping("/member/myPage")
	public String myPage() { 	
		return "member/myPage";
	}
	
	@RequestMapping("/member/myPagehealth")
	public String myPagehealth() {
		return "member/myPagehealth";
	}
}







