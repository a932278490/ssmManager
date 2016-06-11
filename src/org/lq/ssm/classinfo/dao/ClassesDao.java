package org.lq.ssm.classinfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Classes;
/**
 * �༶����
 * @author lanqiao
 *
 */
public interface ClassesDao {
	
	
	public List<Classes> findAll(); //��ѯ���еİ༶
	
	public int save(Classes c); 	//��Ӱ༶
	
	public int delete(int id);		 //ɾ���༶
	
	public int update(Classes c);		//�޸İ༶
	
	public List<Classes> findByName(@Param("name")String name); //ͨ�����Ʋ��°༶
	
	public Classes findById(@Param("cid") Integer cid);
}
