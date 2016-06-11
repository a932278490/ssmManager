package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 跟踪类
 * @author lanqiao
 *
 */
public class Track {
	private Integer recode_id;//跟踪编号
	private String recode_title;//主题
	private String recode_content;//跟踪内容
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date recode_time;// 记录时间
	//private Integer enrollment;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date recode_ntime;//下次联系时间
	private Student student;//学生类
	private Dictionory dictionory;//意向状态
	private Staff staff;
	public Integer getRecode_id() {
		return recode_id;
	}
	public void setRecode_id(Integer recodeId) {
		recode_id = recodeId;
	}
	public String getRecode_title() {
		return recode_title;
	}
	public void setRecode_title(String recodeTitle) {
		recode_title = recodeTitle;
	}
	public String getRecode_content() {
		return recode_content;
	}
	public void setRecode_content(String recodeContent) {
		recode_content = recodeContent;
	}
	public Date getRecode_time() {
		return recode_time;
	}
	public void setRecode_time(Date recodeTime) {
		recode_time = recodeTime;
	}
	public Date getRecode_ntime() {
		return recode_ntime;
	}
	public void setRecode_ntime(Date recodeNtime) {
		recode_ntime = recodeNtime;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Dictionory getDictionory() {
		return dictionory;
	}
	public void setDictionory(Dictionory dictionory) {
		this.dictionory = dictionory;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	
}
