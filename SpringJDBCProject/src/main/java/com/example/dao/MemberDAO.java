package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.domain.Member;

@Repository
public class MemberDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate; 
	
	public int insertMember(Member member) {
		
		String query = "INSERT INTO MEMBER VALUES( ?, ?, ?, ?)";
		
		int count = jdbcTemplate.update(query, member.getId(), member.getPassword(), member.getNickName(), member.getEmail());
		
		return count;
	}

	public Member loginMember(Member m) {
		
		String query = "SELECT * FROM MEMBER WHERE ID = ? AND PASSWORD = ?";
		
		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				
				member.setId(rs.getString("ID"));
				member.setPassword(rs.getString("PASSWORD"));
				member.setNickName(rs.getString("NICKNAME"));
				member.setEmail(rs.getString("EMAIL"));
				
				return member;
			}
		}, m.getId(), m.getPassword());
		
		return memberList.isEmpty() ? null : memberList.get(0);
	}
	
	
}
