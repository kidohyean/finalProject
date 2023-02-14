package com.finalProject.project.service;


import java.util.ArrayList;
import java.util.HashMap;
import com.finalProject.project.model.ExerciseInfoVO;

public interface IExerciseInfoService {
	public ArrayList<ExerciseInfoVO> rankListInfo(int pNum);
	public ArrayList<ExerciseInfoVO> itemListInfo(HashMap<String,Object> map);
	public int itemListCount(int pNum);
	public ExerciseInfoVO detailViewRoutineInfo(String routineNo); // 상세 상품 조회

}
