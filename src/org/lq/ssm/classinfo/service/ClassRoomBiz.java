package org.lq.ssm.classinfo.service;

import java.util.List;

import org.lq.ssm.entity.ClassRoom;

public interface ClassRoomBiz {
	
	public List<ClassRoom> findAll();	//��ѯ���н���
	
	public List<ClassRoom> findByName(String name);	//ͨ�����Ʋ�ѯ����
	
	public int delete(int id); //ɾ��
	
	public int update(ClassRoom c);	//�޸�
	
	public int save(ClassRoom c);	//����
	
	public ClassRoom findById(int id);
}
