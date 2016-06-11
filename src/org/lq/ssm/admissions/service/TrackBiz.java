package org.lq.ssm.admissions.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Track;

public interface TrackBiz {

	public List<Track> findAll();//查询全部
	public boolean save(Track t);//添加
	public boolean update(Track t);//修改
	public boolean delete(int id);//删除
	public List<Track> getByName(String name);//根据姓名查询
	public List<Track> getByEnrollment(String Enrollment);//根据意向查询
	public Track getById(int id);
}
