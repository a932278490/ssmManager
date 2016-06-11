package org.lq.ssm.system.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Staff;

public interface StaffBiz {
    /**
     * 员工服务层接口
     */
	public List<Staff> findAll();
	/**
	 * 
	 * 根据ID查询
	 */
	public Staff findById(int id);
	/**
	 *保存 
	 */
	public int save(Staff s);
	/***
	 * 根据条件查询
	 */
	public List<Staff>likename(String name,String sex);
	/**
	 * 更新
	 */
	public int update(Staff s);
	/**
	 * 删除
	 */
	public int delete(int id);
	/**
	 * 更新角色
	 * @param s
	 * @return
	 */
	public int updateRole(Staff s);
	
	public Staff findByname(String name);
	
	public List<Staff> findTeacher();
}
