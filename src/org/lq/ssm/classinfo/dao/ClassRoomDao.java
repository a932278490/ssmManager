package org.lq.ssm.classinfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.ClassRoom;
/**
 * ���ҹ���
 * @author lanqiao
 *
 */
public interface ClassRoomDao {
	 
	public List<ClassRoom> findAll(); //��ѯ���н���
	
	public int delete(int id); //ɾ��
	
	public int update(ClassRoom c);	//�޸�
	
	public int save(ClassRoom c);	//����
	
	public List<ClassRoom> findByName(@Param("name")String name); //ͨ�����Ʋ�ѯ
	
	public ClassRoom findById(@Param("id")int id);
	
	
}
