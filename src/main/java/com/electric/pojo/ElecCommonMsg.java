package com.electric.pojo;

import java.io.Serializable;
import java.util.Date;

public class ElecCommonMsg implements Serializable{

	/**
	 * 设备运行实体
	 *<p>ElecCommonMsg.java</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日下午2:25:45
	 */
	private static final long serialVersionUID = 1L;
	private String comId;
	private String stationRun;
	private String devRun;
	private String createDate;
	private String createEmpCode;
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public String getStationRun() {
		return stationRun;
	}
	public void setStationRun(String stationRun) {
		this.stationRun = stationRun;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getDevRun() {
		return devRun;
	}
	public void setDevRun(String devRun) {
		this.devRun = devRun;
	}
	public String getCreateEmpCode() {
		return createEmpCode;
	}
	public void setCreateEmpCode(String createEmpCode) {
		this.createEmpCode = createEmpCode;
	}
	@Override
	public String toString() {
		return "ElecCommonMsg [comId=" + comId + ", stationRun=" + stationRun + ", devRun=" + devRun + ", createDate="
				+ createDate + ", createEmpCode=" + createEmpCode + "]";
	}
}
