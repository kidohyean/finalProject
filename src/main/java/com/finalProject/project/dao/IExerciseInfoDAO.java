package com.finalProject.project.dao;

import java.util.ArrayList;
import java.util.HashMap;
import com.finalProject.project.model.ExerciseInfoVO;



public interface IExerciseInfoDAO {
	public ArrayList<ExerciseInfoVO> rankListInfo(int pNum);
	public ArrayList<ExerciseInfoVO> itemListInfo(HashMap<String,Object> map);
	public int itemListCount(int pNum);
	public ExerciseInfoVO detailViewRoutineInfo(String routineNo);


}

