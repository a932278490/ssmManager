package org.lq.ssm.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Staff;

public interface StaffDao {
	/**
	 * 员工dao层接口
	 */
	public List<Staff>findAll();//查询
	public int save(Staff s);//保存
	public int update(Staff s);//更新
	public int delete(@Param("sid")int id);//删除
	public Staff findById(@Param("id")int id);//根据Id查询
	public List<Staff>likename(@Param("name")String name,@Param("sex")String sex);
	public int updateRole(Staff s);//更新角色
	public Staff findByname(@Param("name") String name);
	public List<Staff> findTeacher();
}
