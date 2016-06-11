package org.lq.ssm.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Role;

public interface RoleDao {
          /**
           * ��ɫdao�ӿ�
           */
	public List<Role>findAll();//��ѯ
	public int save(Role s);//����
	public int update(Role s);//����
	public int delete(@Param("rid")int id);//ɾ��
	public Role findById(@Param("rid")int id);//����Id��ѯ
	public List<Role> likename(@Param("sname")String name);
}
