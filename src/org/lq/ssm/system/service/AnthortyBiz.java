package org.lq.ssm.system.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Anthorty;

public interface AnthortyBiz {
    /**
     * Ȩ�޷����ӿ�
     */
	public List<Anthorty>findAllMenu();//��ѯȫ��
	public int save(Anthorty s);//����
	public int update(Anthorty s);//����
	public int delete(int id);//ɾ��
	public Anthorty findById(int id);//����Id��ѯ
	//��ѯ�Ӽ�
	public List<Anthorty> findChildren();
	//��ѯ����
	public List<Anthorty> findParent();
	//
	//����json�ַ���
	public String getParentJson();
}
