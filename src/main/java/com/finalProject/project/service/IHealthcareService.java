package com.finalProject.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.finalProject.project.model.HealthcareGraphVO;

public interface IHealthcareService {
    public ArrayList<HealthcareGraphVO> graphListView(HashMap<String,Object> map);
    public void hcdInput(HashMap<String,Object> map);
    public ArrayList<HealthcareGraphVO> hcdOutput(String memId);
    public String heightOutput(String memId);
    public ArrayList<HashMap<String, Object>> calendarMyList(HashMap<String, Object> map);
    public ArrayList<HashMap<String, Object>> exerciseMyList(String memId);
    public ArrayList<HashMap<String, Object>> exerciseRecommendList(ArrayList<String> arrItem);
    public void createMyList(HashMap<String,Object> map);
    public void deleteMyList(HashMap<String,Object> map);
    public void deleteList(HashMap<String,Object> map);
}
