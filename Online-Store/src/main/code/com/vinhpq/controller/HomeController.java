package com.vinhpq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vinhpq.model.pojo.Member;
import com.vinhpq.service.MemberService;
import com.vinhpq.service.imp.MemberServiceImp;

@Controller("HomeController")
public final class HomeController {
	
	@Autowired private MemberService memberService;
	
	@RequestMapping(value="/listmembers.do")
	public void listMembers(Model model){
//		ControllerUntility cu = new ControllerUntility();
//		List<Member> listMember = cu.getMemberService().getMembers();
//		model.addAttribute(listMember);
		
		ApplicationContext appContext = new ClassPathXmlApplicationContext("../beans-service.xml");
		memberService = (MemberService) appContext.getBean("memberService");
		model.addAttribute(memberService.getMembers());
	}
	
	@RequestMapping
	public void member(@RequestParam("id") Integer id, Model model){
		
//		Member mem = memberService.getMember(id);
//		if(mem != null)
//			model.addAttribute(mem);
//		else
//			System.out.println("Member NULL");
		
	}
	
}
