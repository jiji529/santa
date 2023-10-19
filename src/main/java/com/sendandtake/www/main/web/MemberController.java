package com.sendandtake.www.main.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.service.MailSendService;
import com.sendandtake.www.main.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	final String path = "member/";
	
	@Autowired
	MemberService memberservice;
	
	@Autowired
	private MailSendService mailservice;
	
	//회원가입
	@GetMapping("/join")
	String join() {
		return path +"join";
	}
	

	//아이디 중복체크
	@PostMapping("/checkEmail")
	@ResponseBody
	public int idCheck(@RequestParam("email")String email) {
		int cnt = memberservice.emailCheck(email);
		return cnt;
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
	
	//이메일인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email, HttpSession session) {
		System.out.println("이메일 인증 요청");
		System.out.println("이메일 인증 이메일 :" + email);
		
		String authNumber = mailservice.joinEmail(email);
		
		session.setAttribute("auth_number", authNumber);
		
		System.out.println(session.getAttribute("auth_number"));
		
		return authNumber;
	}
	//이메일 인증
	@PostMapping("/join")
	String join (MemberVO mvo, String authNumber, @SessionAttribute("auth_number") String authNum) {
		System.out.println(authNumber + ", " + authNum);
		
		if(authNum.equals(authNumber))
			memberservice.join(mvo);
		
		return "redirect:../";
	}
	
}
