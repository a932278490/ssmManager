package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
/**
 * ѧԱ�ɼ�ʵ����
 * @author lanqiao
 *
 */
public class StudentGrade {

	private Integer id;//��ʶ
	private Student student;//ѧ������
	private Staff staff;//��ʦ����
	private String subject;//��Ŀ
	private String grade;//�ɼ�
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date time;//����ʱ��
	private String desc;//��ͨ����
	
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
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
	
	
	
}
