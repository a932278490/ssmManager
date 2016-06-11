package org.lq.ssm.classinfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Subject;

/**
 * ��Ŀ����
 * @author lanqiao
 *
 */
public interface SubjectDao {
	
	public List<Subject> findAll();
	
	public int save(Subject s);	//����
	
	public int delete(Integer id);	//ɾ��
	
	public int updete(Subject s);	//�޸�
	
	public List<Subject> findByName(@Param("name")String name);//ͨ�����Ʋ�ѯ��Ŀ��Ϣ
	
	public Subject findById(@Param("id")int id);//ͨ��id��ȡһ������
	
	
}
