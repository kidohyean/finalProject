package com.finalProject.project.dao;

import java.util.ArrayList;

import com.finalProject.project.model.ExerciseInfoVO;



public interface IExerciseInfoDAO {
	public ArrayList<ExerciseInfoVO> firstListInfo(int pNum);
	public ExerciseInfoVO detailViewRoutineInfo(String routineNo);


}

