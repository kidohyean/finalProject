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
    
}
