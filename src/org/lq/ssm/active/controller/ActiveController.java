package org.lq.ssm.active.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.lq.ssm.active.service.ActiveService;
import org.lq.ssm.entity.Active;
import org.lq.ssm.util.service.DictionoryBiz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("act.do")
public class ActiveController {
	@Resource(name="dictionoryBizImpl")
	private DictionoryBiz dictionoryBizImpl;
	@Resource(name="activeServiceImpl")
	private ActiveService activeServiceImpl;
	
	public void setActiveServiceImpl(ActiveService activeServiceImpl) {
		this.activeServiceImpl = activeServiceImpl;
	}
	public void setDictionoryBizImpl(DictionoryBiz dictionoryBizImpl) {
		this.dictionoryBizImpl = dictionoryBizImpl;
	}
	
	@RequestMapping(params="getDic")
	public String getState(Model m){
		m.addAttribute("state_list", dictionoryBizImpl.findBytype("active_state"));
		m.addAttribute("reaction_list", dictionoryBizImpl.findBytype("REACTION_type"));
		m.addAttribute("type_list", dictionoryBizImpl.findBytype("active_comm"));
		m.addAttribute("seq",activeServiceImpl.findSeq() );
		return "view/marketactive/marketactive/marketactive_add";
	}
	@RequestMapping(params="save")
	public String save(Active a){
		if(activeServiceImpl.save(a)){
			return "redirect:act.do?findAll";
		}
		return "view/marketactive/marketactive/marketactive_add";
	}
	@RequestMapping(params="delete")
	public String delete(Integer id){
		activeServiceImpl.delete(id);
		activeServiceImpl.findAll();
		return "view/marketactive/marketactive/marketactive_list";
	}
	@RequestMapping(params="findAll")
	public String findAll(Model m){
		m.addAttribute("state_list", dictionoryBizImpl.findBytype("active_state"));
		m.addAttribute("act_list", activeServiceImpl.findAll());
		return "view/marketactive/marketactive/marketactive_list";
	}
	
	@RequestMapping(params="findById")
	public String findById(HttpSession session,Integer id,Model m){
		m.addAttribute("state_list", dictionoryBizImpl.findBytype("active_state"));
		m.addAttribute("reaction_list", dictionoryBizImpl.findBytype("REACTION_type"));
		m.addAttribute("type_list", dictionoryBizImpl.findBytype("active_comm"));
		m.addAttribute("byid_list", activeServiceImpl.findById(id));
		return "view/marketactive/marketactive/marketactive_update";
	}
	
	@RequestMapping(params="update")
	public String update(Active a,Model m){
		if(activeServiceImpl.update(a)){
			return "redirect:act.do?findAll";
		}
		return "view/marketactive/marketactive/marketactive_update";
	}
	@RequestMapping(params="getShow")
	public String getShow(Integer id,Model m){
		m.addAttribute("state_list", dictionoryBizImpl.findBytype("active_state"));
		m.addAttribute("reaction_list", dictionoryBizImpl.findBytype("REACTION_type"));
		m.addAttribute("type_list", dictionoryBizImpl.findBytype("active_comm"));
		m.addAttribute("byid_list", activeServiceImpl.findById(id));
		return "view/marketactive/marketactive/marketactive_show";
	}
	@RequestMapping(params="getact")
	public String getact(String cname,Integer state,Model model){
		if((cname!=null&&!"".equals(cname))&&(state!=null&&!"".equals(state))){
			model.addAttribute("act_list",activeServiceImpl.findByCon(cname, state));
		}else if(cname!=null&&!"".equals(cname)){
			model.addAttribute("act_list",activeServiceImpl.findByCon(cname, null));
		}else if(state!=null&&!"".equals(state)){
			model.addAttribute("act_list",activeServiceImpl.findByCon(null, state));
		}else{
			model.addAttribute("act_list",activeServiceImpl.findByCon(null, null));
		}
		model.addAttribute("state_list", dictionoryBizImpl.findBytype("active_state"));
		return "view/marketactive/marketactive/marketactive_list";
	}
	
}
