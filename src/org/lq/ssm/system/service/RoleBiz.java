package org.lq.ssm.system.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Role;

public interface RoleBiz {
    /**
     * ��ɫ�����ӿ�
     */
	public List<Role>findAll();//��ѯ
	public int save(Role s);//����
	public int update(Role s);//����
	public int delete(int id);//ɾ��
	public Role findById(int id);//����Id��ѯ
	public List<Role> likename(String sname);
}
