package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Transaction {
	/**
	 * �༶������Ϣ
	 */
	private Integer tid;//�༶������
	private String title;//����
	private String content;//����
	private String organizition;//��֯��
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date time;//�����
	private String desc;//��ע��Ϣ
	private Classes classes;//�༶���
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOrganizition() {
		return organizition;
	}
	public void setOrganizition(String organizition) {
		this.organizition = organizition;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Classes getClasses() {
		return classes;
	}
	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	
	
	
}
