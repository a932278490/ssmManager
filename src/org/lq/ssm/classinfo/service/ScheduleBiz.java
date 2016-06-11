package org.lq.ssm.classinfo.service;

import java.util.List;

import org.lq.ssm.entity.Schedule;


public interface ScheduleBiz {
	
	public List<Schedule> findAll(); //��ѯ���еĿγ̱�
	
	public List<Schedule> findByName(String name); //ͨ�����Ʋ��¿γ̱�
	
	public int save(Schedule c); //����
	
	public int delete(int id);		 //ɾ���γ̱�
	
	public int update(Schedule c);		//�޸Ŀγ̱�
	
	public int findById(int id);
}
