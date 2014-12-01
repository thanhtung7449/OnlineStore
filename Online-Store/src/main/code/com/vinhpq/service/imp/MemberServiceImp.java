package com.vinhpq.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vinhpq.dao.hibernate.MemberDao;
import com.vinhpq.dao.hibernate.imp.MemberDaoImp;
import com.vinhpq.model.pojo.Member;
import com.vinhpq.service.MemberService;

@Service("MemberServiceImp")
public class MemberServiceImp implements MemberService{

	@Autowired private MemberDao memberDao;
	

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void createMember(Member member) {
		// TODO Auto-generated method stub
		memberDao.create(member);
	}
	
	public List<Member> getMembers() {
		// TODO Auto-generated method stub
		return memberDao.getAll();
	}

	public List<Member> getMemberByFirstName(String firstName) {
		// TODO Auto-generated method stub
		return memberDao.findByFirstName(firstName);
	}

	public Member getMember(Integer id) {
		// TODO Auto-generated method stub
		return memberDao.get(id);
	}

	public void updateMember(Member member) {
		// TODO Auto-generated method stub
		memberDao.update(member);
	}

	public void deleteMember(Integer id) {
		// TODO Auto-generated method stub
		memberDao.deleteById(id);
	}

}
