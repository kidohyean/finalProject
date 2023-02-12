package com.finalProject.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.finalProject.project.dao.IHealthcareDAO;
import com.finalProject.project.model.HealthcareGraphVO;

@Service
public class HealthcareService implements IHealthcareService {
    
    @Autowired
    @Qualifier("IHealthcareDAO")
    IHealthcareDAO dao;

    @Override
    public ArrayList<HealthcareGraphVO> graphListView(HashMap<String, Object> map) {
        return dao.graphView(map);
    }

    @Override
    public void hcdInput(HashMap<String, Object> map) {
        dao.hcdInput(map);
    }

    @Override
    public ArrayList<HealthcareGraphVO> hcdOutput(String memId) {
        ArrayList<HealthcareGraphVO> voList = new ArrayList<HealthcareGraphVO>();
        HashMap<String, Object> inputMap = new HashMap<String,Object>();

        inputMap.put("memId", memId);
        inputMap.put("hcdName", "키");
        voList.add(dao.hcdOutput(inputMap));
        inputMap.put("memId", memId);
        inputMap.put("hcdName", "체중");
        voList.add(dao.hcdOutput(inputMap));
        inputMap.put("memId", memId);
        inputMap.put("hcdName", "혈당");
        voList.add(dao.hcdOutput(inputMap));
        inputMap.put("memId", memId);
        inputMap.put("hcdName", "수축기혈압");
        voList.add(dao.hcdOutput(inputMap));
        inputMap.put("memId", memId);
        inputMap.put("hcdName", "이완기혈압");
        voList.add(dao.hcdOutput(inputMap));
        return voList;
    }

    @Override
    public String heightOutput(String memId) {
        // TODO Auto-generated method stub
        return dao.heightOutput(memId);
    }

    @Override
    public ArrayList<HashMap<String, Object>> calendarMyList(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        return dao.calendarMyList(map);
    }

    @Override
    public ArrayList<HashMap<String, Object>> exerciseMyList(String memId) {
        // TODO Auto-generated method stub
        return dao.exerciseMyList(memId);
    }

    @Override
    public ArrayList<HashMap<String, Object>> exerciseRecommendList(ArrayList<String> arrItem) {
        boolean bmi = arrItem.get(0).equals("체중 정상");
        boolean bs = arrItem.get(0).equals("당뇨 정상");
        boolean bp = arrItem.get(2).equals("혈압 정상");
        HashMap<String,Object> map = new HashMap<String,Object>();
		if(bmi && bs && bp){
			map.put("oxy", 1);
            map.put("mus", 1);
		}

        // bs true이고 bmi랑 bp는 둘다 true일 때 false가 되야 함
        // (bmi == false && bs && bp == false) || (bmi && bs && bp == false) || (bmi == false && bs && bp)
        else if(bs && !(bmi && bp)){
            map.put("oxy", 1);
            map.put("mus", 0);
        }
        
        //(bmi && bs == false && bp) || (bmi && bs == false && bp == false)||(bmi == false && bs == false  && bp)
        else if((bs == false) && !(bmi && bp)){
            map.put("oxy", 0);
            map.put("mus", 1);
        }
		else{
			map.put("oxy", 1);
            map.put("mus", 1);
		}
        return dao.exerciseRecommendList(map);
    }

    @Override
    public void createMyList(HashMap<String, Object> map) {
        dao.createMyList(map);
        
    }

    @Override
    public void deleteMyList(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        dao.deleteMyList(map);
    }

    @Override
    public void deleteList(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        dao.deleteList(map);
    }

    @Override
    public ArrayList<HashMap<String, Object>> dateCount(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        return dao.dateCount(map);
    }

    @Override
    public ArrayList<HashMap<String, Object>> topTodayList(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        return dao.topTodayList(map);
    }

    @Override
    public void itemCheck(HashMap<String, Object> map) {
        // TODO Auto-generated method stub
        dao.itemCheck(map);
    }
    
}
