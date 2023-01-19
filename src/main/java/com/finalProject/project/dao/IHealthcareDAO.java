package com.finalProject.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.finalProject.project.model.HealthcareGraphVO;

public interface IHealthcareDAO {
    public ArrayList<HealthcareGraphVO> graphView(HashMap<String,Object> map);
}
