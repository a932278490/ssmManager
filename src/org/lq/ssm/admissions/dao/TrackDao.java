package org.lq.ssm.admissions.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Audition;
import org.lq.ssm.entity.Track;

public interface TrackDao {
	public List<Track> findAll();//查询全部
	public int save(Track t);//添加
	public int update(Track t);//修改
	public int delete(@Param("id")int id);//删除
	public List<Track> getByName(@Param("name")String name);//根据姓名查询
	public List<Track> getByEnrollment(@Param("Enrollment")String Enrollment);//根据意向查询
	public Track getById(@Param("id")int id);
}
