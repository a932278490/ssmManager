package org.lq.ssm.entity;
/**
 * ģ��
 * @author lanqiao
 *
 */
public class Template {

	private Integer id;//ģ����
	private String tempTittle;//ģ�����
	private String tempContent;//ģ������
	private String tempType;//ģ�����
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTempTittle() {
		return tempTittle;
	}
	public void setTempTittle(String tempTittle) {
		this.tempTittle = tempTittle;
	}
	public String getTempContent() {
		return tempContent;
	}
	public void setTempContent(String tempContent) {
		this.tempContent = tempContent;
	}
	public String getTempType() {
		return tempType;
	}
	public void setTempType(String tempType) {
		this.tempType = tempType;
	}
	@Override
	public String toString() {
		return "Template [id=" + id + ", tempContent=" + tempContent
				+ ", tempTittle=" + tempTittle + ", tempType=" + tempType + "]";
	}
	
}
