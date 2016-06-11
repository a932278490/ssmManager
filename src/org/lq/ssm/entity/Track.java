package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * ������
 * @author lanqiao
 *
 */
public class Track {
	private Integer recode_id;//���ٱ��
	private String recode_title;//����
	private String recode_content;//��������
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date recode_time;// ��¼ʱ��
	//private Integer enrollment;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date recode_ntime;//�´���ϵʱ��
	private Student student;//ѧ����
	private Dictionory dictionory;//����״̬
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
