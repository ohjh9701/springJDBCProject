package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.MemberDAO;
import com.example.domain.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public int insertMember(Member member) throws Exception {
		int count = memberDAO.insertMember(member);
		return count;
	}

	@Override
	public Member selectById(Member m) throws Exception {
		Member member = memberDAO.selectById(m);
		return member;
	}

	@Override
	public Member loginMember(Member m) throws Exception {
		Member member = memberDAO.loginMember(m);
		return member;
	}

	@Override
	public int updateMember(Member member) throws Exception {
		int count = memberDAO.updateMember(member);
		return count;
	}

	@Override
	public int deleteMember(Member member) throws Exception {
		int count = memberDAO.deleteMember(member);
		return count;
	}

	@Override
	public List<Member> memberList() throws Exception {
		List<Member> memberList = memberDAO.memberList();
		return memberList;
	}

	@Override
	public Member selectByPw(Member m) throws Exception {
		Member member = memberDAO.selectByPw(m);
		return member;
	}

	@Override
	public int updatePw(Member m) throws Exception {
		int count = memberDAO.updatePw(m);
		return count;
	}

}
