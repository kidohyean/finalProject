package com.finalProject.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.finalProject.project.dao.ICommunityDAO;
import com.finalProject.project.model.AggregationVO;

@Service
public class CommunityService implements ICommunityService {
	@Autowired
    @Qualifier("ICommunityDAO")
	private ICommunityDAO dao;

	@Override
	public ArrayList<AggregationVO> listAllAggre() {
		return dao.listAllAggre();
	}

	@Override
	public void insertAggregation(AggregationVO vo) {
		dao.insertAggregation(vo);

	}

	@Override
	public void updateAggregation(AggregationVO Aggre) {
		dao.updateAggregation(Aggre);

	}

	@Override
	public void deleteAggregation(String memId) {
		dao.deleteAggregation(memId);

	}

	@Override
	public AggregationVO detailViewAggre(String memId) {
		dao.detailViewAggre(memId);
		return null;
	}

}
