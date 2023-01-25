package com.finalProject.project.model;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class HealthcareGraphVO {
    private int hcdNo;
    private String memId;
    private String hcdName;
    private String hcdValue;

    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Timestamp hcdJoinDate;


    public int getHcdNo() {
        return this.hcdNo;
    }

    public void setHcdNo(int hcdNo) {
        this.hcdNo = hcdNo;
    }

    public String getMemId() {
        return this.memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }

    public String getHcdName() {
        return this.hcdName;
    }

    public void setHcdName(String hcdName) {
        this.hcdName = hcdName;
    }

    public String getHcdValue() {
        return this.hcdValue;
    }

    public void setHcdValue(String hcdValue) {
        this.hcdValue = hcdValue;
    }

    public Date getHcdJoinDate() {
        return this.hcdJoinDate;
    }

    public void setHcdJoinDate(Timestamp hcdJoinDate) {
        this.hcdJoinDate = hcdJoinDate;
    }

}
