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
        HashMap<String, Object> outputMap = new HashMap<String,Object>();

        inputMap.put("memId", memId);
        inputMap.put("hcdName", "키");
        voList.add(dao.hcdOutput(inputMap));
        inputMap.put("memId", memId);
        inputMap.put("hcdName", "몸무게");
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
    
}
