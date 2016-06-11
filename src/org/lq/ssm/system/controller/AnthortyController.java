package org.lq.ssm.system.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.lq.ssm.entity.Anthorty;
import org.lq.ssm.system.service.AnthortyBiz;
import org.lq.ssm.system.service.RoleBiz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("anthorty.do")
public class AnthortyController {
	
    @Resource(name="anthortyBizImpl")
	private AnthortyBiz anthortyBiz;
    @Resource(name="roleBizImpl")
    private RoleBiz roleBiz;
   
	/**
     * 返回Json数组
     * @return
     */
    @RequestMapping(params="findparent")
  
    public String findParent(HttpServletResponse response){
    	response.setContentType("text/html;charset=GBK");
    	String data=anthortyBiz.getParentJson();
    	System.out.println(data);
    	try {
			response.getWriter().print(data);
		} catch (IOException e) {
			e.printStackTrace();
		}
    	return null;
    }
    /**
     * 查询全部
     * @param m
     * @return
     */
    @RequestMapping(params="all")
    public String findAll(Model m){
    	m.addAttribute("allList",anthortyBiz.findAllMenu());
    	return "view/system/anthorty/anthorty_show";
    }
    /**
     * 保存
     * @param a
     * @param m
     * @return
     */
    @RequestMapping(params="save")
    public String saveAnthorty(Anthorty a){
    	if(anthortyBiz.save(a)>0){
    		return "redirect:view/system/anthorty/anthorty_list";
    	}
    	return "view/system/anthorty/anthorty_add";
    }
    /**
     * 查询全部父级(完成)
     * @param m
     * @return
     */
    @RequestMapping(params="findPre")
    public String findparent(Model m){
    	m.addAttribute("ParentList",anthortyBiz.findParent());
    	return "view/system/anthorty/anthorty_add";
    }
    /**
     * 查询全部子级
     * @param m
     * @return
     */
    @RequestMapping(params="findchild")
    public String  findChildren(Model m){
    	m.addAttribute("findChildren", anthortyBiz.findChildren());
   	    return "";
    }
	
	/**
	 * 根据Id查询
	 * @param id
	 * @param m
	 * @return
	 */
    @RequestMapping(params="byid")
	public String findById(Integer id,Model m){
    	m.addAttribute("byidList", anthortyBiz.findById(id));
		return "view/system/anthorty/anthorty_show";
	}
	/**
	 * 根据Id修改权限
	 * @param id
	 * @param m
	 * @return
	 */
    @RequestMapping(params="byidup")
	public String findByIds(Integer id,Model m){
//    	System.out.println(id+"**********************");
    	m.addAttribute("byidListup", anthortyBiz.findById(id));
    	m.addAttribute("ParentList",anthortyBiz.findParent());
		return "view/system/anthorty/anthorty_add";
	}
    /**
     * 根据Id删除
     * @param id
     * @return
     */
    @RequestMapping(params="delete")
    public String delete(Integer id){
//    	System.out.println(id+"***************");
    	if(anthortyBiz.delete(id)>0){
//    		System.out.println("***************");
    		return "view/system/anthorty/anthorty_list";
    	}
    	return null;
    }

    /**
     * 修改
     * @param a
     * @return
     */
//    @RequestMapping(params="update")
//    public String update(Anthorty a){
//    	System.out.println(a+"******************");
//    	if(anthortyBiz.update(a)>0){
//    		System.out.println("+++++++++++++++++");
//    		return "view/system/anthorty/anthorty_list";
//    	}
//    	return null;
//    }


   
    /**
     * 根据name查询角色
     * @param name
     * @param m
     * @return
     */
    @RequestMapping(params="findRoleByName")
    public String findRoleByName(String name,Model m){
    	m.addAttribute("roleList", roleBiz.likename(name));
    	return "view/system/anthotychange/anthorty_changelist";
    }
    
    /**
     * 查询角色
     * @param m
     * @return
     */
    @RequestMapping(params="findRole")
    public String findRole(Model m){
    	m.addAttribute("roleList",roleBiz.findAll());
		return "view/system/anthotychange/anthorty_changelist";	
    }
    
    public void setAnthortyBiz(AnthortyBiz anthortyBiz) {
		this.anthortyBiz = anthortyBiz;
	}
	public void setRoleBiz(RoleBiz roleBiz) {
		this.roleBiz = roleBiz;
	}
    
    
}
