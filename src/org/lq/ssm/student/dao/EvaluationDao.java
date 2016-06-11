package org.lq.ssm.student.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.StudentEvaluation;

public interface EvaluationDao {

	/**
	 * ��ѯȫ��
	 * @return
	 */
	public List<StudentEvaluation> findAll();
	/**
	 * ���
	 * @param e
	 * @return
	 */
	public int save(StudentEvaluation e);
	/**
	 * ɾ��
	 * @param id
	 * @return
	 */
	public int delete(@Param("id") int id);
	/**
	 * �޸�
	 * @param e
	 * @return
	 */
	public int update(StudentEvaluation e);
	/**
	 * ͨ��id��ѯ
	 * @param id
	 * @return
	 */
	public StudentEvaluation findById(@Param("id") int id);
	/**
	 * ģ����ѯ
	 * @param title
	 * @return
	 */
	public List<StudentEvaluation> findByTitle(@Param("title") String title);
}
