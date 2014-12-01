package com.vinhpq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.vinhpq.model.pojo.Member;
import com.vinhpq.service.MemberService;

@Repository
public class ControllerUntility {

//	private  ApplicationContext appContext = 
//			new ClassPathXmlApplicationContext("../beans-service.xml");
//	
//	@Autowired private  MemberService memberService;
//	
//	// Functions
//	
//	public  MemberService getMemberService() {
//		if(appContext == null)
//			System.out.println("null");
//		else
//			System.out.println("not nlull");
//		memberService= (MemberService) appContext.getBean("memberService");
//		return memberService;
//	}

	
}


