package com.finalProject.project.service;

import java.util.HashMap;

import com.finalProject.project.model.MemberVO;


public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	public String memIdCheck(String memId);// 아이디 중복 확인

}