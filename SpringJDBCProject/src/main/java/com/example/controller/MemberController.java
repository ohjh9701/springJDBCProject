package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.Member;
import com.example.service.MemberService;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/insertForm")
	public String memberInsertForm(Model model) {
		log.info("insertForm Start");
		return "member/insertForm";
	}
	
	@PostMapping("/insert")
	public String memberInsert(Model model, Member member) {
		log.info("insert Member = "+member.toString());
		
		try {
			int count = memberService.insertMember(member);
			
			if(count > 0) {
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}
	
	@GetMapping("/loginForm")
	public String memberLogin(Model model) {
		log.info("insertForm Start");
		return "member/loginForm";
	}
	
	@PostMapping("/login") // 메서드 명을 명확하게 변경
	public String login(Member m, HttpSession session, Model model) {
	    log.info("Login Attempt ID = " + m.getId());
	    
	    Member loginUser;
		try {
			loginUser = memberService.loginMember(m);
			if(loginUser == null) {
				// 로그인 실패 시 에러 메시지를 담아 실패 페이지로
				model.addAttribute("errorMessage", "아이디 또는 비밀번호가 올바르지 않습니다.");
				return "member/loginFailed";
			} else {
				// [핵심] 로그인 성공 시 세션에 유저 정보를 저장 (이제 다른 JSP에서도 사용 가능!)
				session.setAttribute("loginUser", loginUser);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 로그인 성공 후 마이페이지(detail) 혹은 메인으로 리다이렉트
		return "redirect:/member/detail"; 
	}

	@GetMapping("/detail")
	public String memberDetail(HttpSession session, Model model) {
	    // 세션에서 로그인 정보를 꺼내옴
	    Member loginUser = (Member) session.getAttribute("loginUser");
	    
	    if(loginUser == null) {
	        return "redirect:/member/loginForm"; // 로그인 안 됐으면 로그인창으로 내쫓기
	    }
	    
	    model.addAttribute("member", loginUser);
	    return "member/detail";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	    log.info("로그아웃 요청됨");
	    
	    // 1. 세션 정보를 완전히 삭제
	    session.invalidate(); 
	    
	    // 2. 로그아웃 완료 페이지로 이동하거나 리다이렉트
	    return "member/logout"; 
	}
	
	
}
