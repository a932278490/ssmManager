package org.lq.ssm.student.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.StudentCommunicate;


public interface CommunicateDao {

	/**
	 * ��ѯȫ��
	 * @return
	 */
	public List<StudentCommunicate> findAll();
	/**
	 * ���
	 * @param c
	 * @return
	 */
	public int save(StudentCommunicate c);
	/**
	 * ɾ��
	 * @param id
	 * @return
	 */
	public int delete(@Param("id") int id);
	/**
	 * �޸�
	 * @param c
	 * @return
	 */
	public int update(StudentCommunicate c);
	/**
	 * ͨ��id��ѯ
	 * @param id
	 * @return
	 */
	public StudentCommunicate findById(@Param("id") int id);
	/**
	 * ģ����ѯ
	 * @param name
	 * @return
	 */
	public List<StudentCommunicate> findByName(@Param("name") String name);
}
