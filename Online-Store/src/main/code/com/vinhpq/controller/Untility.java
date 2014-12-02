package com.vinhpq.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.vinhpq.service.MemberService;

public class Untility {
	
	private static  ApplicationContext appContext = 
			new ClassPathXmlApplicationContext("classpath:/spring/beans-service.xml");
	public static Object getService(String serviceName){
		return appContext.getBean(serviceName);
	}
	
	// Functions
	public static MemberService getMemberService() {
		return  (MemberService) appContext.getBean("memberService");
		
	}

	
}