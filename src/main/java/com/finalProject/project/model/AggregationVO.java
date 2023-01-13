package com.finalProject.project.model;
import java.sql.Date;
public class AggregationVO {

	private int agNum;
	private String agName;
	private Date agDate;
	private String agText;
	private int agCount;
	private String memId;

	public int getAgNum() {
		return this.agNum;
	}

	public void setAgNum(int agNum) {
		this.agNum = agNum;
	}

	public String getAgName() {
		return this.agName;
	}

	public void setAgName(String agName) {
		this.agName = agName;
	}

	public Date getAgDate() {
		return this.agDate;
	}

	public void setAgDate(Date agDate) {
		this.agDate = agDate;
	}

	public String getAgText() {
		return this.agText;
	}

	public void setAgText(String agText) {
		this.agText = agText;
	}

	public int getAgCount() {
		return this.agCount;
	}

	public void setAgCount(int agCount) {
		this.agCount = agCount;
	}

	public String getMemId() {
		return this.memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

}
