package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * ѧ���ɷ�
 * @author lanqiao
 *
 */
public class Stu_Payment {
	private Integer pid;//�ɷѱ��
	private Staff staff;//Ա�����
	private Student student;//ѧԱ���
	private String situatic;//�ɷ����
	private Dictionory method;//�ɷѷ�ʽ
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date time;//�ɷ�ʱ��
	private Double disamount;//�Żݽ��
	private Double should;//Ӧ�����
	private Double real;//ʵ�ɽ��
	private Double debt;//Ƿ��
	private String desc;//��ע
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getSituatic() {
		return situatic;
	}
	public void setSituatic(String situatic) {
		this.situatic = situatic;
	}
	
	public Dictionory getMethod() {
		return method;
	}
	public void setMethod(Dictionory method) {
		this.method = method;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Double getDisamount() {
		return disamount;
	}
	public void setDisamount(Double disamount) {
		this.disamount = disamount;
	}
	public Double getShould() {
		return should;
	}
	public void setShould(Double should) {
		this.should = should;
	}
	public Double getReal() {
		return real;
	}
	public void setReal(Double real) {
		this.real = real;
	}
	public Double getDebt() {
		return debt;
	}
	public void setDebt(Double debt) {
		this.debt = debt;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
}
