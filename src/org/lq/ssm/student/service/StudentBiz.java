package org.lq.ssm.student.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Student;

public interface StudentBiz {

	public List<Student> findAll();
	
	public boolean save(Student s);
	
	public boolean delete(int id);
	
	public Student findById(int id);
	
	public boolean update(Student s);
	
	public List<Student> findByName(String name);
	
	public List<Student> getstubypay(String ispay);
//-------------------600----------------------------------
	public  List<Student> findStudentPool();
	public boolean delete1(int id);
	public boolean save1(Student s);
	public boolean updateState(int id);
	public boolean updateStudent(Student s);
	public List<Student> findByCon(String sname,Integer state);
}
