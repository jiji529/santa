package com.sendandtake.www.main.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	final String path = "member/";
	
	@Autowired
	MemberService memberservice;
	
	//회원가입
	@GetMapping("/join")
	String join() {
		return path +"join";
	}
	
	@PostMapping("/join")
	String join (MemberVO mvo) {
		memberservice.join(mvo);
		
		return "login";
	}
	
	//회원정보 수정
	@GetMapping("/update/{userNo}")
	String update(@PathVariable int userNo, Model model) {
		MemberVO mvo= memberservice.mvo(userNo);
		
		model.addAttribute("mvo", mvo);
		
		return path + "update";
	}
	
	@PostMapping("/update/{userNo}")
	String update(@PathVariable int userNo, MemberVO mvo) {
		mvo.setUserNo(userNo);
		
		memberservice.update(mvo);
		
		return "user";
	}
	
	//회원탈퇴
	@GetMapping("/delete/{userNo}")
	String delete(@PathVariable int userNo) {
		memberservice.delete(userNo);
		
		return "main";
	}
}
