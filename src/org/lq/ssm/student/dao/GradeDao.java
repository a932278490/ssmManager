package org.lq.ssm.student.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.StudentGrade;

public interface GradeDao {

	/**
	 * ��ѯȫ��
	 * @return
	 */
	public List<StudentGrade> findAll();
	/**
	 * ���
	 * @param g
	 * @return
	 */
	public int save(StudentGrade g);
	
	/**
	 * ɾ��
	 * @param id
	 * @return
	 */
	public int delete(@Param("id") int id);
	/**
	 * �޸�
	 * @param g
	 * @return
	 */
	public int update(StudentGrade g);
	/**
	 * ����id��ѯ
	 * @param id
	 * @return
	 */
	public StudentGrade findById(@Param("id") int id);
	/**
	 * ģ����ѯ
	 * @param name
	 * @return
	 */
	public List<StudentGrade> findByName(@Param("name") String name);
}
