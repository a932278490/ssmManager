package org.lq.ssm.system.controller;

import javax.annotation.Resource;

import org.lq.ssm.entity.Role;
import org.lq.ssm.entity.Staff;
import org.lq.ssm.system.service.StaffBiz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("staff.do")
public class StaffController {
   @Resource(name="staffBizImpl")
   private StaffBiz staffBiz;
   /**
    * 查询全部员工
    * @param m
    * @return
    */
   @RequestMapping(params="findStaff")
   public String findAll(Model m){
	   m.addAttribute("staffList",staffBiz.findAll());
	   return "view/system/staffinfo/staffinfo_list";
   }
   /**
    * 更新员工
    * @param s
    * @param m
    * @return
    */
   @RequestMapping(params="byid")
   public String getbyId(Integer id,Model m){
	   m.addAttribute("staffbyid", staffBiz.findById(id));
	   return "view/system/staffinfo/staffinfo_update";
   }
   @RequestMapping(params="update")
   public String update(Staff s){
	   System.out.println(s);
	   System.out.println(s.getAddress()+s.getSex());
	   if(staffBiz.update(s)>0){
		   return "redirect:staff.do?findStaff";
	   }
	   return "view/system/staffinfo/staffinfo_update";
   }
   /**
    * 保存
    * @param s
    * @return
    */
   @RequestMapping(params="save")
   public String staffSave(Staff s){
	   if(staffBiz.save(s)>0){
		   return "redirect:staff.do?findStaff";
	   }
	   return "view/system/staffinfo/staffinfo_add";
   }
   /**
    * 很据条件查询
    * @param name
    * @param sex
    * @param m
    * @return
    */
   @RequestMapping(params="likefind")
   public String likeName(String sname,String sex,Model m){
	   m.addAttribute("staffList",staffBiz.likename(sname, sex));
	   return "view/system/staffinfo/staffinfo_list";
   }
   /**
    * 删除
    * @param id
    * @return
    */
   @RequestMapping(params="delete")
   public String delete(Integer id){
	   if(staffBiz.delete(id)>0){
		   System.out.println("*****************");
		   return "redirect:staff.do?findStaff";
	   }
	   return "redirect:staff.do?findStaff";
   }
public void setStaffBiz(StaffBiz staffBiz) {
	this.staffBiz = staffBiz;
  }     
}
