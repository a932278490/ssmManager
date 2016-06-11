package org.lq.ssm.classinfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Schedule;

/**
 * �γ̱����
 * @author lanqiao
 *
 */
public interface ScheduleDao {
	
	public List<Schedule> findAll(); //��ѯ���еĿγ̱�
	
	public List<Schedule> findByName(@Param("name")String name); //ͨ�����Ʋ�γ̱�
	
	public int save(Schedule c); //����
	
	public int delete(int id);		 //ɾ���γ̱�
	
	public int update(Schedule c);		//�޸Ŀγ̱�
	
	public int findById(@Param("id")int id);
}
