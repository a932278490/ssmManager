package org.lq.ssm.active.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Active;
import org.lq.ssm.entity.Dictionory;

public interface ActiveDao {

	public List<Active> findAll();
	
	public Active findById(Integer id);
	
	public int save(Active a);
	
	public int update(Active a);
	
	public int delete(Integer id);
	
	public int findSeq();
	
	public List<Active> findByCon(@Param("name")String name,@Param("state")Integer state);
}
