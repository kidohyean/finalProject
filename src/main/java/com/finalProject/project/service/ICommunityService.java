package com.finalProject.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.finalProject.project.model.AggregationVO;

public interface ICommunityService {
	public ArrayList<AggregationVO> listAllAggre(HashMap map); // 전체 리뷰 조회
	public ArrayList<AggregationVO> myListAllAggre(HashMap map); // 내가 쓴글
	public void insertAggregation(AggregationVO Aggre); // 리뷰 추가
	public void updateAggregation(AggregationVO Aggre); // 리뷰 수정
	public void deleteAggregation(String memId); //리뷰 삭제
	public AggregationVO detailViewAggre(String memId); // 리뷰 조회
	public int dataCount();
	public int myDataCount(String memId);
}
