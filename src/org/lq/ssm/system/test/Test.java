package org.lq.ssm.system.test;

import java.util.List;

import org.lq.ssm.entity.Anthorty;
import org.lq.ssm.entity.Role;
import org.lq.ssm.system.dao.AnthortyDao;
import org.lq.ssm.system.dao.RoleDao;
import org.lq.ssm.system.dao.StaffDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.google.gson.Gson;

public class Test {
	public static void main(String[] args) {

		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		StaffDao staffDao = (StaffDao) context.getBean("staffDao");
		
//		System.out.println(staffDao.updateRole(s));
//		System.out.println(staffDao.findAll().size());
//		Staff s=new Staff();
//		s.setName("王丹");
//		s.setPlace("河南开封");
//		s.setAddress("河南开封");
//		s.setAge(26);
//		s.setBirthday(new Date());
//		s.setDesc("你说什么");
//		s.setEdulevel("本科");
//		s.setEmail("123456");
//		s.setIdcard("123456987789456123");
//		s.setHiredate(new Date());
//		s.setNumber("wadmin");
//		s.setOffice("1100");
//		s.setPassword("123");
//		s.setPhone("123456");
//		s.setQq("123456");
//		Role r=new Role();
//		r.setRid(1);
//		s.setRoles(r);
//		s.setState("在职");
//		s.setSex("女");
//		s.setSid(8);
//		System.out.println(staffDao.save(s));
//		List<Staff>list=staffDao.likename(null,"男");
//		for (Staff staff : list) {
//			System.out.println(staff.getSex()+"\t"+staff.getName());
//		}
//	 System.out.println();
//		System.out.println(staffDao.findById(1).getName());
//		System.out.println(staffDao.delete(17));
		
//		RoleDao role=(RoleDao) context.getBean("roleDao");
//		Role r=new Role();
//		r.setName("java工程师");
//		r.setDesc("写代码");
//		r.setState("程序员");
//		System.out.println(role.save(r));
//       System.out.println(staffDao.findById(1).getPlace());
		AnthortyDao ad=(AnthortyDao) context.getBean("anthortyDao");
//         List<Anthorty> list=ad.findAllMenu();
//         for (Anthorty an : list) {
//			System.out.println(an.getName());
//			for (Anthorty at : an.getChildrens()) {
//				System.out.println("\t"+at.getName());
//			   	
//			}
//		}
//         System.out.println(new Gson().toJson(ad.findAllMenu()));
//		List<Anthorty> list=ad.findParent();
//		for (Anthorty anthorty : list) {
//			System.out.println(anthorty.getName());
//			
//		}
		
		RoleDao rd=(RoleDao) context.getBean("roleDao");
		List<Role> r=rd.likename("教师");
		for (Role role : r) {
			System.out.println(role);
		}
		
	}
          
	}

