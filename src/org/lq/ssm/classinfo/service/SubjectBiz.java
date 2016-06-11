package org.lq.ssm.classinfo.service;

import java.util.List;

import org.lq.ssm.entity.Subject;


public interface SubjectBiz {
	
	public List<Subject> findAll(); //��ѯ����
	
	public List<Subject> findByName(String name); //ͨ������
	
	public int save(Subject c); //����
	
	public int delete(int id);		 //ɾ��
	
	public int update(Subject c);		//�޸�
	
	public Subject findById(int id);//id��ȡ����
}
