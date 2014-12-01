package com.vinhpq.dao.hibernate;

import java.util.List;


import com.vinhpq.dao.DAO;
import com.vinhpq.model.pojo.Member;

public interface MemberDao extends DAO<Member>{
	
	List<Member> findByFirstName(String firstName);
	
	
}
