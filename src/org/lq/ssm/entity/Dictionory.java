package org.lq.ssm.entity;

public class Dictionory {
    /**
     * �����ֵ�ʵ����
     */
	private Integer id;//��ʾ��
	private String context;//����
	private String type;//����
	private String desc;//����
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Override
	public String toString() {
		return "Dictionory [context=" + context + ", desc=" + desc + ", id="
				+ id + ", type=" + type + "]";
	}
	
	
}
