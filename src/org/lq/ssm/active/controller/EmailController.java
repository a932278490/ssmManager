package org.lq.ssm.active.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.lq.ssm.active.service.EmailService;
import org.lq.ssm.active.service.TemplateService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ema.do")
public class EmailController {
	
	@Resource(name="emailServiceImpl")
	private EmailService emailServiceImpl;
	@Resource(name="templateServiceImpl")
	private TemplateService templateServiceImpl;
	
	public void setTemplateServiceImpl(TemplateService templateServiceImpl) {
		this.templateServiceImpl = templateServiceImpl;
	}
	@RequestMapping(params="findAll")
	public String findAll(Model m){
		m.addAttribute("email_list", emailServiceImpl.findAll());
		return "view/marketactive/emailinfo/emailinfo_list";
	}
	@RequestMapping(params="findById")
	public String findById(Model m,Integer id){
		m.addAttribute("ema_list", emailServiceImpl.findById(id));
		System.out.println(emailServiceImpl.findById(id).toString());
		return "view/marketactive/emailinfo/emailinfo_show";
	}
	@RequestMapping(params="delete")
	public String delete(Integer id,Model m){
		emailServiceImpl.delete(id);
		m.addAttribute("email_list", emailServiceImpl.findAll());
		return "view/marketactive/emailinfo/emailinfo_list";
	}
	
	@RequestMapping(params="getTem")
	public String getTem(Model m){
		m.addAttribute("tem_list", emailServiceImpl.getTem());
		return "view/marketactive/emailinfo/emailinfo_send";
	}
	@RequestMapping(params="findTitle")
	public String findTitle(Model m,String title){
		m.addAttribute("email_list", emailServiceImpl.findByTitle(title));
		return "view/marketactive/emailinfo/emailinfo_list";
	}
	
	@RequestMapping(params="findId")
	public String findId(Integer modelId,HttpServletResponse response){
		response.setContentType("text/html;charset=GBK");
			String str1=templateServiceImpl.findById(modelId).getTempContent();
			try {
				response.getWriter().print(str1);
			} catch (IOException e) {
			}	
			
		return null;
	}
//	@RequestMapping(params="getTitle")
//	public String getTitle(Integer mid,HttpServletResponse response){
//		response.setContentType("text/html;charset=GBK");
//		try {
//			response.getWriter().print(templateServiceImpl.findById(mid).getTempTittle());
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return null;
//	}
	
	
	
	
	public void setEmailServiceImpl(EmailService emailServiceImpl) {
		this.emailServiceImpl = emailServiceImpl;
	}
	
	
}
