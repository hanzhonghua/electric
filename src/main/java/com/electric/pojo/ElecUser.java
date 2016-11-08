package com.electric.pojo;

import java.io.Serializable;
import java.util.Date;

public class ElecUser implements Serializable{

	/**
	 *<p>ElecUser.java</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日下午6:25:00
	 */
	private static final long serialVersionUID = 1L;
	
	private String userId; //主键
	private String jctId; //所属单位code
	private String userName; //用户姓名
	private String loginName; //登陆名
	private String loginPwd; //登陆密码
	private String sexId; // 性别
	private Date birthday; //生日
	private String address; //地址
	private String contactTel; //电话
	private String email; //邮箱
	private String mobile; // 手机
	private String idDuty; //是否在职
	private Date onDutDate; //入职时间
	private Date offDutDate; //离职时间
	private String remark; //备注
	private String isDelete; //是否删除
	private String createEmpId; //创建人id
	private Date createDate; //创建时间
	private String lastEmpId; //修改人id
	private Date lastEmpDate; //修改时间
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getJctId() {
		return jctId;
	}
	public void setJctId(String jctId) {
		this.jctId = jctId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public String getSexId() {
		return sexId;
	}
	public void setSexId(String sexId) {
		this.sexId = sexId;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactTel() {
		return contactTel;
	}
	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getIdDuty() {
		return idDuty;
	}
	public void setIdDuty(String idDuty) {
		this.idDuty = idDuty;
	}
	public Date getOnDutDate() {
		return onDutDate;
	}
	public void setOnDutDate(Date onDutDate) {
		this.onDutDate = onDutDate;
	}
	public Date getOffDutDate() {
		return offDutDate;
	}
	public void setOffDutDate(Date offDutDate) {
		this.offDutDate = offDutDate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
	public String getCreateEmpId() {
		return createEmpId;
	}
	public void setCreateEmpId(String createEmpId) {
		this.createEmpId = createEmpId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getLastEmpId() {
		return lastEmpId;
	}
	public void setLastEmpId(String lastEmpId) {
		this.lastEmpId = lastEmpId;
	}
	public Date getLastEmpDate() {
		return lastEmpDate;
	}
	public void setLastEmpDate(Date lastEmpDate) {
		this.lastEmpDate = lastEmpDate;
	}
	
}
