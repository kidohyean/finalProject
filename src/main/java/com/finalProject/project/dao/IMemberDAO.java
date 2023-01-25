package com.finalProject.project.dao;


import org.springframework.transaction.annotation.Transactional;

import com.finalProject.project.model.MemberVO;

public interface IMemberDAO {
	// 비밀번호 암호화 하기 이전에 사용하는 메소드
	//public String loginCheck(HashMap<String, Object> map);
	
	// 비밀번호 암호화하는 경우 사용하는 메소드
	public String loginCheck(String id);
	public void insertMember(MemberVO vo);
	public String memIdCheck(String memId);// 아이디 중복 확인
	public MemberVO memberInfo(String memId); //회원 정보 조회
	public void memberModify(MemberVO member);
	}
	


		
	
