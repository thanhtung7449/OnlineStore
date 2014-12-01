package com.vinhpq.service;

import java.util.List;

import com.vinhpq.model.pojo.Member;

public interface MemberService {
	
	void createMember(Member member);
	
	List<Member> getMembers();
	
	List<Member> getMemberByFirstName(String firstName);
	
	Member getMember(Integer id);
	
	void updateMember(Member member);
	
	void deleteMember(Integer id);
}
