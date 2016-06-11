package org.lq.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Staff {
    /**
    * 员工信息实体类 
    */
	private Integer sid;//标示列
	private  String name;//名称
	private String sex;//性别
	private int age;//年龄
	private String place;//籍贯
	private String idcard;//身份证号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;//出生日期
	private String office;//办公电话
	private String phone;//移动电话
	private String email;//邮箱
	private String address;//家庭地址
	private String qq;//QQ联系
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private  Date hiredate;//入职日期
	private String edulevel;//教育水平
	private String desc;//备注信息
	private String state;//状态
	private String password;//登录密码
	private String number;//登录账号
	/**
	 * 一个员工可以担任多个角色(一对多)关系
	 */
	private Role roles;
	
	
	
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getOffice() {
		return office;
	}
	public void setOffice(String office) {
		this.office = office;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public String getEdulevel() {
		return edulevel;
	}
	public void setEdulevel(String edulevel) {
		this.edulevel = edulevel;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Role getRoles() {
		return roles;
	}
	public void setRoles(Role roles) {
		this.roles = roles;
	}
	@Override
	public String toString() {
		return "Staff [name=" + name + ", sid=" + sid + "]";
	}
    
	
	
}
