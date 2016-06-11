package org.lq.ssm.system.controller;

import javax.annotation.Resource;

import org.lq.ssm.entity.Role;
import org.lq.ssm.entity.Staff;
import org.lq.ssm.system.service.RoleBiz;
import org.lq.ssm.system.service.StaffBiz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("role.do")
public class RoleController {
	@Resource(name="roleBizImpl")
	private RoleBiz roleBiz;
	@Resource(name="staffBizImpl")
	private StaffBiz staffBiz;
	/**
	 * ��ѯȫ��
	 * @return
	 */
    @RequestMapping(params="roleFind")
	public String rolefind(Model m){
    	m.addAttribute("roleList", roleBiz.findAll());
		return "view/system/roleinfo/roleinfo_list";
	}
    /**
     * ����������ѯ
     */
    @RequestMapping(params="like")
    public String likename(String sname,Model m){
    	m.addAttribute("roleList", roleBiz.likename(sname));
    	return "view/system/roleinfo/roleinfo_list";
    }
    /**
     * ����
     * @param r
     * @return
     */
    @RequestMapping(params="save")
    public String saverole(Role r){
    	if(roleBiz.save(r)>0){
    		return "redirect:role.do?roleFind";
    	}
    	return "view/system/roleinfo/roleinfo_add";
    }
    /**
     * ɾ��
     * @param id
     * @return
     */
    @RequestMapping(params="delete")
    public String deleteRole(Integer id){
    	if(roleBiz.delete(id)>0){
    		System.out.println("*************************");
    		return "redirect:role.do?roleFind";
    	}
    	return "view/system/roleinfo/roleinfo_list";
    }
    /**
     * ����id��ѯ
     * @param id
     * @param m
     * @return
     */
    @RequestMapping(params="byid")
    public String findByid(Integer id,Model m){
    	m.addAttribute("findId", roleBiz.findById(id));
    	return "view/system/roleinfo/roleinfo_update";
    }
    /**
     * ����
     * @param r
     * @return
     */
    @RequestMapping(params="update")
    public String update(Role r){
    	System.out.println("***********************************");
    	if(roleBiz.update(r)>0){
    		return "redirect:role.do?roleFind";
    	}
    	return "view/system/roleinfo/roleinfo_update";
    }
    /**
     * ��ɫ�ı�
     */
    @RequestMapping(params="rsChange")
    public String rolechang(Model m){
    	m.addAttribute("rsList",staffBiz.findAll());
    	return "view/system/roleinfo/staffinfo_role_list";
    }
    /**
     * �ܾ�������ѯ
     * @param name
     * @param sex
     * @param m
     * @return
     */
    @RequestMapping(params="likefind")
    public String likeName(String sname,String sex,Model m){
 	   m.addAttribute("rsList",staffBiz.likename(sname, sex));
 	   return "view/system/roleinfo/staffinfo_role_list";
    }
    /**
     * ����
     * @param s
     * @return
     */
    @RequestMapping(params="saves")
    public String staffSave(Staff s){
 	   if(staffBiz.save(s)>0){
 		   return "redirect:role.do?rsChange";
 	   }
 	   return "view/system/staffinfo/staffinfo_add";
    }
    /**
     * ����ID��ѯԱ��
     * @param id
     * @param m
     * @return
     */
    @RequestMapping(params="byids")
    public String findById(Integer id,Model m){
    	m.addAttribute("roleall", roleBiz.findAll());
    	m.addAttribute("staffbyid", staffBiz.findById(id));
    	return "view/system/roleinfo/role_change";
    }
    
    @RequestMapping(params="saverole")
    public String saverole(Staff s){
    	System.out.println(s+"***********************");
    	if(staffBiz.updateRole(s)>0){
    		return "redirect:role.do?rsChange";
    	}
    	return "view/system/roleinfo/role_change";
    }
}

