package org.lq.ssm.active.service;

import java.util.List;

import org.lq.ssm.entity.Active;

public interface ActiveService {
	
	public List<Active> findAll();
	
	public Active findById(Integer id);
	
	public boolean save(Active a);
	
	public boolean update(Active a);
	
	public boolean delete(Integer id);
	
	public int findSeq();
	
	public List<Active> findByCon(String name,Integer state);
}
