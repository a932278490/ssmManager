package org.lq.ssm.student.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.lq.ssm.classinfo.service.ClassesBiz;
import org.lq.ssm.entity.Audition;
import org.lq.ssm.entity.Student;
import org.lq.ssm.student.service.StudentBiz;
import org.lq.ssm.system.service.StaffBiz;
import org.lq.ssm.util.service.DictionoryBiz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * student ¿ØÖÆÌ¨
 * @author lanqiao
 *
 */
@Controller
@RequestMapping("student.do")
public class StudentController {
	
	@Resource(name="studentBizImpl")
	private StudentBiz studentBiz;
	
	@Resource(name="dictionoryBizImpl")
	private DictionoryBiz dictionoryBiz;
	
	@Resource(name="staffBizImpl")
	private StaffBiz staffBiz;
	
	@Resource(name="classAction")
	private ClassesBiz classesBiz;
	
	
	@RequestMapping(params="findAll")
	public String findAll(Model m,HttpSession session){
		List<Student> list=studentBiz.findAll();
		session.setAttribute("stu_list", list);
		return "view/student/student/student_list";
	}
	
	@RequestMapping(params="getDictionory")
	public String getDictionory(Model m){
		m.addAttribute("staff_list", staffBiz.findAll());
		m.addAttribute("class_list", classesBiz.findAll());
		m.addAttribute("dict_list", dictionoryBiz.findBytype("intention_type"));
		return "view/student/student/student_add";
	}
	
	@RequestMapping(params="save")
	public String save(Student s){
		if(studentBiz.save(s)){
			return "redirect:student.do?findAll";
		}
		return "view/student/student/student_add";
	}
	
	@RequestMapping(params="byname")
	public String findByName(String sname,Model m,HttpSession session){
		session.setAttribute("stu_list", studentBiz.findByName(sname));
		return "view/student/student/student_list";
	}
	
	@RequestMapping(params="byid")
	public String findById(Integer id,Model m){
		m.addAttribute("staff_list", staffBiz.findAll());
		m.addAttribute("class_list", classesBiz.findAll());
		m.addAttribute("dict_list", dictionoryBiz.findBytype("intention_type"));
		m.addAttribute("stu_list", studentBiz.findById(id));
		return "view/student/student/student_update";
	}
	
	@RequestMapping(params="update")
	public String update(Student s){
		if(studentBiz.update(s)){
			return "redirect:student.do?findAll";
		}
		return "view/student/student/student_update";
	}
	
	@RequestMapping(params="delete")
	public String delete(Integer id){
		if(studentBiz.delete(id)){
			return "redirect:student.do?findAll";
		}
		return "view/student/student/student_list";
	}
//----------------------600-----------------------------------
	@RequestMapping(params="StudentPool")
	public String findStudentPool(Model m){
		m.addAttribute("Stu_Pool",studentBiz.findStudentPool() );
		return "view/recruitstudent/studentpool/studentpool_list";
	}
//----------------------------------------------------------
	@RequestMapping(params="save1")
	public String save1(Student s){
		
		studentBiz.save1(s);
			return "redirect:student.do?StudentPool";
	}
//----------------------------------------------
	@RequestMapping(params="delete1")
	public String delete1(Integer id){
		studentBiz.delete1(id);
		return "redirect:student.do?StudentPool";
		}
//-------------------------------------------
	@RequestMapping(params="update1")
	public String update1(Student s){
		
		studentBiz.update(s);
		return "redirect:student.do?StudentPool";
		}
//-----------------------------------------
	@RequestMapping(params="getDic")
	public String getD(Model m){
		m.addAttribute("dictionoryList",dictionoryBiz.findBytype("intention_type"));
		return "view/recruitstudent/studentpool/studentpool_add";
	}
//------------------------------------------
	@RequestMapping(params="getById1")
	public String getById1(Integer id,Model m){
		m.addAttribute("dst", dictionoryBiz.findBytype("intention_type"));
		m.addAttribute("stuPool",studentBiz.findById(id));
			return "view/recruitstudent/studentpool/studentpool_update";
		}
//--------------------------------------------
	@RequestMapping(params="updateState")
	public String updateState(Integer id,Model m){
		studentBiz.updateState(id);
		 return "redirect:student.do?StudentPool";
		
	}
//------------------------------------------
	@RequestMapping(params="updateStudent")
	public String updateStudent(Student s,Model m){
		studentBiz.updateStudent(s);
		
		return "redirect:student.do?StudentPool";
	}
//---------------------------------------------
	public void setStudentBiz(StudentBiz studentBiz) {
		this.studentBiz = studentBiz;
	}

	public void setDictionoryBiz(DictionoryBiz dictionoryBiz) {
		this.dictionoryBiz = dictionoryBiz;
	}

	public void setStaffBiz(StaffBiz staffBiz) {
		this.staffBiz = staffBiz;
	}

	public void setClassesBiz(ClassesBiz classesBiz) {
		this.classesBiz = classesBiz;
	}
	
	
}
