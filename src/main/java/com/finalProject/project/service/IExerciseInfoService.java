package com.finalProject.project.service;


import java.util.ArrayList;

import com.finalProject.project.model.ExerciseInfoVO;

public interface IExerciseInfoService {
	public ArrayList<ExerciseInfoVO> firstListInfo(int pNum);
	public ExerciseInfoVO detailViewRoutineInfo(String routineNo); // 상세 상품 조회

}
