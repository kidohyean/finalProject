package com.finalProject.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.finalProject.project.model.HealthcareGraphVO;

public interface IHealthcareService {
    public ArrayList<HealthcareGraphVO> graphListView(HashMap<String,Object> map);
    public void hcdInput(HashMap<String,Object> map);
    public ArrayList<HealthcareGraphVO> hcdOutput(String memId);
    public String heightOutput(String memId);
}
