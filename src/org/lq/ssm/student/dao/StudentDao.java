package org.lq.ssm.student.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.lq.ssm.entity.Student;

public interface StudentDao {

	/**
	 * 查询全部
	 * @return
	 */
	public List<Student> findAll();
	/**
	 * 添加
	 * @param s
	 * @return
	 */
	public int save(Student s);
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delete(@Param("id") int id);
	/**
	 * 通过id查询
	 * @param id
	 * @return
	 */
	public Student findById(@Param("id") int id);
	/**
	 * 修改
	 * @param s
	 * @return
	 */
	public int update(Student s);
	/**
	 * 模糊查询
	 * @param name
	 * @return
	 */
	public List<Student> findByName(@Param("name") String name);
	public List<Student> getstubypay(@Param("ispay")String ispay);
    //--------------------600-------------------------
	public  List<Student> findStudentPool();
	public int delete1(@Param("id") int id);
	public int save1(Student s);
	public int updateState(@Param("id") int id);
	public int updateStudent(Student s);
	public List<Student> findByCon(@Param("sname")String sname,@Param("state")Integer state);
}
