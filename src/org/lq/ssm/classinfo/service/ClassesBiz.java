package org.lq.ssm.classinfo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Classes;

public interface ClassesBiz {
	
	public List<Classes> findAll(); //��ѯ���еİ༶
	
	
	public List<Classes> findByName(String name); //ͨ�����Ʋ��°༶
	
	public int save(Classes c); //����
	
	public int delete(int id);		 //ɾ���༶
	
	public int update(Classes c);		//�޸İ༶
	
	public Classes findById(int cid);
	
	
}
