package org.lq.ssm.admissions.controller;

import javax.annotation.Resource;

import org.lq.ssm.admissions.service.AuditionBiz;
import org.lq.ssm.entity.Audition;
import org.lq.ssm.student.dao.StudentDao;
import org.lq.ssm.student.service.StudentBiz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("audition.do")
public class AuditionController {
	
	@Resource(name="auditionBizImpl")
	private AuditionBiz auditionBiz;
	
	@Resource(name="studentBizImpl")
	private StudentBiz studentBiz;
//------------------------------------------
	@RequestMapping(params="auditionAll")
	public String findAll(Model m){
		m.addAttribute("audition_List", auditionBiz.findAll());
		return "view/recruitstudent/auditioninfo/auditioninfo_list";
		
	}
//--------------------------------------------	
	@RequestMapping(params="likeName")
	public String getByName(String name,String couse,Model m){
		if(!"".equals(couse)&&!"".equals(name)){
			m.addAttribute("audition_List", auditionBiz.getNC(name, couse));
		}else if(!"".equals(name)&&"".equals(couse)){
			m.addAttribute("audition_List", auditionBiz.getByName(name));
		}else if(!"".equals(couse)&&"".equals(name)){
			m.addAttribute("audition_List", auditionBiz.getByCouse(couse));
		}
		return "view/recruitstudent/auditioninfo/auditioninfo_list";
		
	}
//--------------------------------------------
//	@RequestMapping(params="likeCouse")
//	public String getByCouse(String couse,Model m){
//		m.addAttribute("audition_List", auditionBiz.getByCouse(couse==null? "" : couse));
//		return "view/recruitstudent/auditioninfo/auditioninfo_list";
//		
//	}
//----------------------------------------------
	@RequestMapping(params="save")
	public String save(Audition a){
		auditionBiz.save(a);
			return "redirect:audition.do?auditionAll";
	}
		
//------------------------------------------------
	@RequestMapping(params="getStudent")
	public String getStudent(Model m){
		m.addAttribute("studentList",studentBiz.findAll());
		
		return "view/recruitstudent/auditioninfo/auditioninfo_add";
	}
//---------------------------------------------------
	@RequestMapping(params="delete")
	public String delete(Integer id){
		auditionBiz.delete(id);
			return "redirect:audition.do?auditionAll";
		}
		
//----------------------------------------------------
	@RequestMapping(params="update")
	public String update(Audition a){
		
		auditionBiz.update(a);
			return "redirect:audition.do?auditionAll";
		}
//-----------------------------------------------------
	@RequestMapping(params="getById")
	public String getById(Integer id,Model m){
		
		m.addAttribute("stu",auditionBiz.getById(id));
			return "view/recruitstudent/auditioninfo/auditioninfo_update";
		}
//-----------------------------------------------------
	public void setAuditionBiz(AuditionBiz auditionBiz) {
		this.auditionBiz = auditionBiz;
	}
	public void setStudentBiz(StudentBiz studentBiz) {
		this.studentBiz = studentBiz;
	}
}
