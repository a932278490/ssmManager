package org.lq.ssm.admissions.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Audition;

public interface AuditionBiz {
	
	public List<Audition> findAll();//查询全部
	public boolean save(Audition a);//添加
	public boolean update(Audition a);//修改
	public boolean delete(int id);//删除
	public List<Audition> getByName(String name);//根据姓名查询
	public List<Audition> getByCouse(String couse);//根据试听课程查询
	public List<Audition> getNC(String name,String couse);
	public Audition getById(int id);
}
