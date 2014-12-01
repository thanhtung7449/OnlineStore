package com.vinhpq.dao.hibernate.imp;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vinhpq.dao.hibernate.AbstractHbnDao;
import com.vinhpq.dao.hibernate.MemberDao;
import com.vinhpq.model.pojo.Member;

@Repository("MemberDaoImp")
public class MemberDaoImp extends AbstractHbnDao<Member> implements MemberDao{
	
	@SuppressWarnings("unchecked")
	public List<Member> findByFirstName(String firstName) {
		// TODO Auto-generated method stub
		
		return getSession()
					.getNamedQuery("findMemberByFirstName")
					.setString("firstName", firstName)
					.list();
	}
	
	
}
