package com.vinhpq.dao.hibernate;

import java.util.List;


import com.vinhpq.dao.Dao;
import com.vinhpq.model.pojo.Member;

public interface MemberDao extends Dao<Member>{
	
	List<Member> findByFirstName(String firstName);
	
	
}
