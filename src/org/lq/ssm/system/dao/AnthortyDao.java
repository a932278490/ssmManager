package org.lq.ssm.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Anthorty;

public interface AnthortyDao {
        /**
         * Ȩ��ϵͳdao�ӿ�
         */
	public List<Anthorty>findAllMenu();//��ѯȫ��
	public int save(Anthorty s);//����
	public int update(Anthorty s);//����
	public int delete(@Param("id")int id);//ɾ��
	public Anthorty findById(@Param("id")int id);//����Id��ѯ
	//��ѯ�Ӽ�
	public List<Anthorty> findChildren();//��ѯ����(�Ӽ�)�˵�(���ݸ���Id�ж�)
	//��ѯ����
	public List<Anthorty> findParent();
	
}
