package org.lq.ssm.entity;

import java.util.ArrayList;
import java.util.List;

public class Anthorty {
    /**
     * Ȩ��ʵ����
     */
	private Integer aid;//Ȩ�ޱ��
	private String name;//Ȩ������
	private String desc;//Ȩ������
	private String url;//Ȩ������URL
	/**
	 * һ��Ȩ�޿��Ը�ֵ�������ɫ(һ�Զ�)
	 */
//	private List<Role>roles=new ArrayList<Role>();
	/**
	 * һ�������˵���������Ӳ˵�(һ�Զ��)
	 */
	private List<Anthorty> childrens;
	
	private Anthorty parent;//��������
	
	
//	public List<Role> getRoles() {
//		return roles;
//	}
//	public void setRoles(List<Role> roles) {
//		this.roles = roles;
//	}
	
	public Integer getAid() {
		return aid;
	}
	
	

	

	public Anthorty getParent() {
		return parent;
	}





	public void setParent(Anthorty parent) {
		this.parent = parent;
	}





	public List<Anthorty> getChildrens() {
		return childrens;
	}



	public void setChildrens(List<Anthorty> childrens) {
		this.childrens = childrens;
	}



	public void setAid(Integer aid) {
		this.aid = aid;
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
