package org.lq.ssm.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Dictionory;
import org.lq.ssm.entity.Staff;

public interface DictionoryDao {
	/**
	 * �����ֵ�ӿ�
	 */
	public List<Dictionory> findAll();//��ѯ
	public int save(Dictionory s);//����
	public int update(Dictionory s);//����
	public int delete(@Param("id")int id);//ɾ��
	public Dictionory findById(@Param("id")int id);//����Id��ѯ
	public List<Dictionory> findBytype(@Param("type")String type);
}
