package com.finalProject.project.dao;

import java.util.ArrayList;

import com.finalProject.project.model.spmVO;

public interface ISpmDAO {
	public ArrayList<spmVO> ctgListSpm(String spmCtg);
	
	public ArrayList<spmVO>listSupplement();  //전체 상품
	public spmVO spmDetail(String spmName);  //상세 상품
}
