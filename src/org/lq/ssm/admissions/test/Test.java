package org.lq.ssm.admissions.test;

import java.util.Date;

import org.lq.ssm.admissions.dao.AuditionDao;
import org.lq.ssm.entity.Audition;
import org.lq.ssm.entity.Student;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
 public static void main(String[] args) {
	  ApplicationContext context=new ClassPathXmlApplicationContext("springMvc.xml");
	  AuditionDao ad=(AuditionDao) context.getBean("auditionDao");
	  Audition a=new Audition();
	  a.setAudition_id(26);
	  Student s=new Student();
	  s.setId(1001);
	  a.setStudent(s);
	  a.setAudition_course("java");
	  a.setAudition_desc("aaaaa");
	  a.setAudition_time(new Date());
	  a.setAudition_address("dddddd");
	 
	  System.out.println(ad.update(a));
}
}
