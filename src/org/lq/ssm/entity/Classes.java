package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * �༶ʵ����
 * @author lanqiao
 *
 */
public class Classes {
	
	private Integer id;		//�༶���
	private String name;	//�༶����
	private Integer num;	//�༶����
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date start;		//��������
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date end;		//��������
	private String isused;	//�Ƿ���Ч
	private String state;	//�༶״̬
	private String desc;	//����
	
	/**
	 * ���һ��ϵ
	 * ������Ϣ
	 */
	private ClassRoom classRoom;	
	/**
	 * ���һ��ϵ
	 * ѧ����Ϣ
	 */
	private Subject subject;
	/**
	 * ���һ��ϵ
	 * �γ̱�
	 */
	private Schedule schedule;
	/**
	 * ���һ��ϵ
	 * @return
	 */
	private Staff staff;
	
	
	
	
	public ClassRoom getClassRoom() {
		return classRoom;
	}
	public void setClassRoom(ClassRoom classRoom) {
		this.classRoom = classRoom;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public Schedule getSchedule() {
		return schedule;
	}
	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public String getIsused() {
		return isused;
	}
	public void setIsused(String isused) {
		this.isused = isused;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	
	
}
