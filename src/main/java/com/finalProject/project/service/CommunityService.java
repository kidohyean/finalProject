package com.finalProject.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.finalProject.project.dao.ICommunityDAO;
import com.finalProject.project.model.AggregationVO;
import com.finalProject.project.model.commentVO;

@Service
public class CommunityService implements ICommunityService {
	@Autowired
    @Qualifier("ICommunityDAO")
	private ICommunityDAO dao;

	@Override
	public ArrayList<AggregationVO> listAllAggre(HashMap<String,Object> map) {
		return dao.listAllAggre(map);
	}

	@Override
	public void insertAggregation(AggregationVO Aggre) {
		dao.insertAggregation(Aggre);

	}

	@Override
	public void updateAggregation(HashMap<String,Object> map) {
		dao.updateAggregation(map);

	}

	@Override
	public void deleteAggregation(int agNum) {
		dao.deleteAggregation(agNum);

	}

	@Override
	public AggregationVO detailViewAggre(int agNum) {
		return dao.detailViewAggre(agNum);
	}

	@Override
	public int dataCount() {
		// TODO Auto-generated method stub
		return dao.dataCount();
	}

	@Override
	public ArrayList<AggregationVO> myListAllAggre(HashMap<String,Object> map) {
		// TODO Auto-generated method stub
		return dao.myListAllAggre(map);
	}

	public int myDataCount(String memId) {
		// TODO Auto-generated method stub
		return dao.myDataCount(memId);
	}

	@Override
	public void viewsAggregation(int agNum) {
		// TODO Auto-generated method stub
		dao.viewsAggregation(agNum);
	}

	@Override
	public void insertComment(commentVO cVo) {
		dao.insertComment(cVo);
		
	}

	@Override
	public ArrayList<commentVO> listAllComment(int agNum) {
		// TODO Auto-generated method stub
		return dao.listAllComment(agNum);
	}

}
