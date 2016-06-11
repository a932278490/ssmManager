package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
/**
 * Ӫ���
 * @author lanqiao
 *
 */
public class Active {

	private Integer id;//����
	private Staff staff;//��߻���
	private String activeName;//�����
	private Dictionory activeState;//�״̬
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date starDate;//���ʼʱ��
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date endDate;//�����ʱ��
	private Dictionory activeType;//�����
	private Double costEmtimente;//Ԥ�ڳɱ�
	private Double realCost;//ʵ�ʳɱ�
	private Dictionory reflect;//Ԥ�ڷ�ӳ
	private String expectStudent;//Ԥ��ѧԱ
	private String activeDescription;//����
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public String getActiveName() {
		return activeName;
	}
	public void setActiveName(String activeName) {
		this.activeName = activeName;
	}
	public Dictionory getActiveState() {
		return activeState;
	}
	public void setActiveState(Dictionory activeState) {
		this.activeState = activeState;
	}
	public Date getStarDate() {
		return starDate;
	}
	public void setStarDate(Date starDate) {
		this.starDate = starDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Dictionory getActiveType() {
		return activeType;
	}
	public void setActiveType(Dictionory activeType) {
		this.activeType = activeType;
	}
	public Double getCostEmtimente() {
		return costEmtimente;
	}
	public void setCostEmtimente(Double costEmtimente) {
		this.costEmtimente = costEmtimente;
	}
	public Double getRealCost() {
		return realCost;
	}
	public void setRealCost(Double realCost) {
		this.realCost = realCost;
	}
	public Dictionory getReflect() {
		return reflect;
	}
	public void setReflect(Dictionory reflect) {
		this.reflect = reflect;
	}
	public String getExpectStudent() {
		return expectStudent;
	}
	public void setExpectStudent(String expectStudent) {
		this.expectStudent = expectStudent;
	}
	public String getActiveDescription() {
		return activeDescription;
	}
	public void setActiveDescription(String activeDescription) {
		this.activeDescription = activeDescription;
	}
	@Override
	public String toString() {
		return "Active [activeDescription=" + activeDescription
				+ ", activeName=" + activeName + ", activeState=" + activeState
				+ ", activeType=" + activeType + ", costEmtimente="
				+ costEmtimente + ", endDate=" + endDate + ", expectStudent="
				+ expectStudent + ", id=" + id + ", realCost=" + realCost
				+ ", reflect=" + reflect + ", staff=" + staff + ", starDate="
				+ starDate + "]";
	}
	
	
	
	
	




}
