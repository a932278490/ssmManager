package org.lq.ssm.entity;
/**
 * ѧ����Ϣ
 * @author lanqiao
 *
 */
public class Subject {
	
	private Integer id;		//ѧ�Ʊ��
	private String name;	//ѧ������
	private Double money;	//����
	private Integer hour;	//ѧʱ
	private String desc;	//����
	private String isused;	//�Ƿ���Ч
	
	
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
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public Integer getHour() {
		return hour;
	}
	public void setHour(Integer hour) {
		this.hour = hour;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getIsused() {
		return isused;
	}
	public void setIsused(String isused) {
		this.isused = isused;
	}
	
	
	
}
