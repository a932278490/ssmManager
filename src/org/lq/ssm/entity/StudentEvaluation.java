package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class StudentEvaluation {

	/**
	 * ѧԱ����ʵ����
	 */
	
	private Integer id;//ѧԱ���۱��
	private Student student;//ѧԺ����
	private String title;//��������
	private String content;//��������
	private String course;//�γ�����
	private String teacher;//������ʦ
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date etime;//����ʱ��
	
	
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
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	
	
}
