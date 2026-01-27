package com.example.service;

import java.util.List;

import com.example.domain.Member;

public interface MemberService {
	
	public int insertMember(Member member) throws Exception;
	
	public Member selectById(Member member) throws Exception;
	
	public Member loginMember(Member member) throws Exception;
	
	public int updateMember(Member member) throws Exception;
	
	public int deleteMember(Member member) throws Exception;
	
	public List<Member> memberList() throws Exception;
}
