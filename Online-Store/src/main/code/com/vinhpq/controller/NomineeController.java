package com.vinhpq.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vinhpq.model.pojo.Member;

public final class NomineeController {
	
	private static final Logger log = Logger.getLogger(NomineeController.class);
	
	private String thanksViewName;
	
	public void setThanksViewName(String thanksViewName) {
		this.thanksViewName = thanksViewName;
	}
	
	@RequestMapping(method = RequestMethod.GET) 
	public Member form() { return new Member();} 
	
	/*
	 * Khi Form gửi POST request lên thì vào processFormData sử lý
	 * */
//	@RequestMapping(method = RequestMethod.POST) 
//	public String processFormData(Member member) { 
//		log.info("Processing nominee: " + member);
//		return thanksViewName; 
//	}
	
//	@RequestMapping(method = RequestMethod.GET)
//		public void form(Model model) {
//		model.addAttribute("nominee", new Member());
//	}
	
	/*
	 * Spring sẽ tự load object Member vào biến member
	 * @ModelAttribute sẽ giúp thay đổi tên attribute "member" -> "nominee" khi chuyển qua View
	 * */
	@RequestMapping(method = RequestMethod.POST)
	public String processFormData(@ModelAttribute("nominee") Member member, Model model) {
		log.info("Processing nominee: " + member);
		Map map = model.asMap();
		log.info("model[member]=" + map.get("member"));
		log.info("model[nominee]=" + map.get("nominee"));
		return thanksViewName;
	}
	
	
	
//	@InitBinder("subscriber")
//	public void initSubscriberBinder(WebDataBinder binder) {
//		binder.setAllowedFields(new String[] {"firstName", "lastName", "email"});
//		
//	}
//	
//	@InitBinder("unsubscriber")
//	public void initUnsubscriberBinder(WebDataBinder binder) {
//		binder.setAllowedFields(new String[] { "email" });
//	
//	}
//	
//	public static void verifyBinding(BindingResult result) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("Attempting to bind suppressed fields: " +
//					StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		}
//	}
	
}
