package com.finalProject.project.service;

import java.util.HashMap;

import org.apache.ibatis.javassist.compiler.ast.Member;

import com.finalProject.project.model.MemberVO;


public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	public String memIdCheck(String memId);// 아이디 중복 확인
	public MemberVO memberInfo(String memId); //회원 정보 조회
	public void updatemember(MemberVO memId); // 회원 정보수정
	public void deletemember(String memId); // 회원 탈퇴
	

	

}