package org.lq.ssm.entity;

import java.util.Date;
/**
 * Ա��нˮ
 * @author lanqiao
 *
 */
public class Staff_Salary {
	private Integer ssid;//Ա��нˮ���
	private Staff staid;//��ȡ��
	private Staff stasid;//������Ա
	private Double totsal;//����нˮ
	private Double desal;//�۳�
	private Double resal;//ʵ�ʷ��Ź���
	private String isused="��";//�Ƿ񷢷�
	private Date saldate;//��������
	private String remark;//��ע
	
	public Integer getSsid() {
		return ssid;
	}
	public void setSsid(Integer ssid) {
		this.ssid = ssid;
	}
	public Staff getStaid() {
		return staid;
	}
	public void setStaid(Staff staid) {
		this.staid = staid;
	}
	public Staff getStasid() {
		return stasid;
	}
	public void setStasid(Staff stasid) {
		this.stasid = stasid;
	}
	public Double getTotsal() {
		return totsal;
	}
	public void setTotsal(Double totsal) {
		this.totsal = totsal;
	}
	public Double getDesal() {
		return desal;
	}
	public void setDesal(Double desal) {
		this.desal = desal;
	}
	public Double getResal() {
		return resal;
	}
	public void setResal(Double resal) {
		this.resal = resal;
	}
	public String getIsused() {
		return isused;
	}
	public void setIsused(String isused) {
		this.isused = isused;
	}
	public Date getSaldate() {
		return saldate;
	}
	public void setSaldate(Date saldate) {
		this.saldate = saldate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
