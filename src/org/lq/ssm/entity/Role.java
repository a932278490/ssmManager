package org.lq.ssm.entity;

import java.util.ArrayList;
import java.util.List;

public class Role {
    /**
     * 角色表实体类
     */
	private Integer rid;//角色编号
	private String name;//角色名字
	private String desc;//角色描述
	private String state;//角色状态
	/**
	 * 一个角色可以有多个员工担任(一对多)
	 * @return
	 */
//	private List<Staff> staffs=new ArrayList<Staff>();
	/**
	 * 一个角色可以有多个权限
	 * @return
	 */
	private List<Anthorty> anthortys=new ArrayList<Anthorty>();
	
	
//	public List<Staff> getStaffs() {
//		return staffs;
//	}
//	public void setStaffs(List<Staff> staffs) {
//		this.staffs = staffs;
//	}
	
	public Integer getRid() {
		return rid;
	}
	public void setAnthortys(List<Anthorty> anthortys) {
		this.anthortys = anthortys;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
}
