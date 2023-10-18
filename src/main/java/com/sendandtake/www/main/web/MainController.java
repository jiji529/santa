package com.sendandtake.www.main.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.pager.Pager;
import com.sendandtake.www.main.service.MainService;
import com.sendandtake.www.product.model.ProductVO;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	//홈페이지
	@GetMapping("/")
	String main (Model model, HttpSession session) {
		
		String msg = (String)session.getAttribute("msg");
		
		if(msg != null) {
			model.addAttribute("msg", msg);
			session.removeAttribute("msg");
		}
			
		List<ProductVO> list = mainService.selectProductList();
		
		
		model.addAttribute("list", list);
	
	
		
		return "main";
	}

	
	//메인페이지-회원목록
	/*
	 * @GetMapping("/user.do") String main (Model model, HttpSession session) {
	 * 
	 * String msg = (String)session.getAttribute("msg");
	 * 
	 * if(msg != null) { model.addAttribute("msg", msg);
	 * session.removeAttribute("msg"); }
	 * 
	 * List<MemberVO> list = mainService.selectMemberList();
	 * 
	 * model.addAttribute("list", list);
	 * 
	 * return "user"; }
	 */
	
	
	
	//로그인 페이지
	@GetMapping("/login.do")
	String login(Model model, HttpSession session) {
		
		String msg = (String)session.getAttribute("msg");
		
		if(msg != null) {
			model.addAttribute("msg", msg);
			session.removeAttribute("msg");
		}
		
		return "login";
	}
	
	@PostMapping("/login.do")
	String login (MemberVO vo, HttpSession session) {
		
		MemberVO mvo = mainService.selectLogin(vo);
		
		//로그인 실패시, 로그인 화면으로 이동
		if(mvo==null) {
			
			session.setAttribute("msg", "로그인이 안됐습니다.");
			
			return "redirect:/login.do";
			
		//로그인 성공 시 회원목록 화면으로 이동.
		} else { 
			
			session.setAttribute("loginUser", mvo);
			
			session.setAttribute("msg", "환영합니다.");
			
			return "redirect:/";
		}
		
	}
	
	//로그아웃
	@GetMapping("/logout")
	String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	//고객문의
	@GetMapping("/support.do")
	String support(Model model) {
		
		List<MemberVO> list = mainService.selectMemberList();
		
		model.addAttribute("list", list);
		
		return "support";
	}
	
	
	//카테고리페이지
	@GetMapping("/list")
	String list(Model model ,Pager pager) {
		
//		pager.setKeyword("");
		pager.setPerPage(3);
		List<ProductVO> list = mainService.selectProductList(pager);
		
		model.addAttribute("list", list);
		
		return "list";
	}

}
