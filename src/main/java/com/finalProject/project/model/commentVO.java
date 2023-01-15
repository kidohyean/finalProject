package com.finalProject.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class commentVO {
    private int cId;
    private String cContent;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;
    private int agNum;
    private String memId;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateDate;
    private int cDepth;
    private int cGroup;
    
    public int getcId() {
        return cId;
    }
    public void setcId(int cId) {
        this.cId = cId;
    }
    public String getcContent() {
        return cContent;
    }
    public void setcContent(String cContent) {
        this.cContent = cContent;
    }
    public Date getCreateDate() {
        return createDate;
    }
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
    public int getAgNum() {
        return agNum;
    }
    public void setAgNum(int agNum) {
        this.agNum = agNum;
    }
    public String getMemId() {
        return memId;
    }
    public void setMemId(String memId) {
        this.memId = memId;
    }
    public Date getUpdateDate() {
        return updateDate;
    }
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
    public int getcDepth() {
        return cDepth;
    }
    public void setcDepth(int cDepth) {
        this.cDepth = cDepth;
    }
    public int getcGroup() {
        return cGroup;
    }
    public void setcGroup(int cGroup) {
        this.cGroup = cGroup;
    }

    
}
