package org.lq.ssm.util.service;

import java.util.List;

import org.lq.ssm.entity.Dictionory;

public interface DictionoryBiz {
     /**
      * �����ֵ�����    
      * @return
      */
	public List<Dictionory>findAll();//��ѯ
	public int save(Dictionory s);//����
	public int update(Dictionory s);//����
	public int delete(int id);//ɾ��
	public Dictionory findById(int id);//����Id��ѯ
	public List<Dictionory> findBytype(String type);
}
