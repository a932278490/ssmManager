package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
/**
 * ѧԱ��ͨʵ����
 * @author lanqiao
 *
 */
public class StudentCommunicate {

	private Integer id;//ѧԱ��ͨ���
	private Student student;//ѧԺ����
	private Staff staff;//��ʦ����
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date comtime;//��ͨʱ��
	private String content;//��ͨ����
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public Date getComtime() {
		return comtime;
	}
	public void setComtime(Date comtime) {
		this.comtime = comtime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
