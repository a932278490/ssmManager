package org.lq.ssm.admissions.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Audition;

/**
 * ����
 * @author lanqiao
 *
 */
public interface AuditionDao {
	public List<Audition> findAll();//��ѯȫ��
	public int save(Audition a);//���
	public int update(Audition a);//�޸�
	public int delete(@Param("id")int id);//ɾ��
	public List<Audition> getByName(@Param("name")String name);//����������ѯ
	public List<Audition> getByCouse(@Param("couse")String couse);//���������γ̲�ѯ
	public List<Audition> getNC(@Param("name")String name,@Param("couse")String couse);
	public Audition getById(@Param("id")int id);

}
