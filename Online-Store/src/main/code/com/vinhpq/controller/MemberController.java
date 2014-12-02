package com.vinhpq.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vinhpq.model.pojo.Member;
import com.vinhpq.service.MemberService;

@Controller("MemberController")
public final class MemberController {
	
	private static final Logger log = Logger.getLogger(NomineeController.class);
	private String thanksViewName;
	
	@Autowired private MemberService memberService;
	
	/* ***************************************************************
	 * Controller Mapping
	 * ***************************************************************/
	@RequestMapping
	public void list(Model model){
		List<Member> listMember = getMemberService().getMembers();
		model.addAttribute(listMember);
		// return member/list.jsp
	}

	@RequestMapping
	public void member(@RequestParam("id") Integer id, Model model){
		model.addAttribute(getMemberService().getMember(id));
		// return member/member.jsp
	}
	
	@RequestMapping(method = RequestMethod.GET) 
	public Member form() { 
		if(log.isDebugEnabled()){
			log.debug("getWelcome is executed!");
		}
		log.debug("FORM Loginggggggggggggggggggggggggggggggggg");
		return new Member();
	} 
	
	@RequestMapping(method = RequestMethod.POST)
	public String processFormData(@ModelAttribute("nominee") Member member, Model model) {
		log.debug("Loginggggggggggggggggggggggggggggggggg");
		log.info("Processing nominee: " + member);
		Map map = model.asMap();
		log.info("model[member]=" + map.get("member"));
		log.info("model[nominee]=" + map.get("nominee"));
		return thanksViewName;
	}
	
	/* ***************************************************************
	 * Get/Set
	 * ***************************************************************/
	public final MemberService getMemberService() {
		if(memberService==null)
			memberService = (MemberService) Untility.getService("memberService");
		return memberService;
	}

	public void setThanksViewName(String thanksViewName) {
		this.thanksViewName = thanksViewName;
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

