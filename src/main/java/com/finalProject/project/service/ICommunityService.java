package com.finalProject.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.finalProject.project.model.AggregationVO;
import com.finalProject.project.model.commentVO;

public interface ICommunityService {
	public ArrayList<AggregationVO> listAllAggre(HashMap<String,Object> map); // 전체 리뷰 조회
	public ArrayList<AggregationVO> myListAllAggre(HashMap<String,Object> map); // 내가 쓴글
	public void insertAggregation(AggregationVO Aggre); // 리뷰 추가
	public void updateAggregation(HashMap<String,Object> map); // 리뷰 수정
	public void viewsAggregation(int agNum); // 조회수 카운트
	public void deleteAggregation(int agNum); //리뷰 삭제
	public void deleteAggComment(int agNum); //리뷰 삭제 시 댓글 삭제
	public AggregationVO detailViewAggre(int agNum); // 영양제 리뷰 조회
	public void insertComment(commentVO cVo);
	public ArrayList<commentVO> listAllComment(int agNum); 
	public int dataCount();
	public int myDataCount(String memId);
}
