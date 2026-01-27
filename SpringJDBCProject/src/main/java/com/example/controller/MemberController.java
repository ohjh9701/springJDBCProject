package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RestController("/member")
public class MemberController {
	
	@GetMapping("/insertForm")
	public String memberInsertForm(Model model) {
		log.info("insertForm Start");
		return "member/insertForm";
	}
	
	
	
}
