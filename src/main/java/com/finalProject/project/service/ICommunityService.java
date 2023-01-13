package com.finalProject.project.service;

import java.util.ArrayList;

import com.finalProject.project.model.AggregationVO;

public interface ICommunityService {
	public ArrayList<AggregationVO> listAllAggre(); // 전체 리뷰 조회
	public void insertAggregation(AggregationVO vo); // 리뷰 추가
	public void updateAggregation(AggregationVO Aggre); // 리뷰 수정
	public void deleteAggregation(String memId); //리뷰 삭제
	public AggregationVO detailViewAggre(String memId); // 리뷰 조회
<<<<<<< HEAD
=======
	public int dataCount();
	public int myDataCount(String memId);
>>>>>>> parent of d2affd3 (0112_Sareukil_02_detail)
}
