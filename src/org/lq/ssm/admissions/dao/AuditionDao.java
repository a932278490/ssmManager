package org.lq.ssm.admissions.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Audition;

/**
 * 试听
 * @author lanqiao
 *
 */
public interface AuditionDao {
	public List<Audition> findAll();//查询全部
	public int save(Audition a);//添加
	public int update(Audition a);//修改
	public int delete(@Param("id")int id);//删除
	public List<Audition> getByName(@Param("name")String name);//根据姓名查询
	public List<Audition> getByCouse(@Param("couse")String couse);//根据试听课程查询
	public List<Audition> getNC(@Param("name")String name,@Param("couse")String couse);
	public Audition getById(@Param("id")int id);

}
