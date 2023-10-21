package com.sendandtake.www.main.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.pager.Pager;
import com.sendandtake.www.main.service.MainService;
import com.sendandtake.www.main.service.MemberService;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	MemberService memberService;
	
	//홈페이지
	@GetMapping("/")
	String main (Model model, HttpSession session, Pager pager) {
		
		String msg = (String)session.getAttribute("msg");
		
		if(msg != null) {
			model.addAttribute("msg", msg);
			session.removeAttribute("msg");
		}
			
		pager.setPerPage(8);
		List<ProductVO> list = mainService.selectProductList(pager);
		
		
		for (ProductVO product : list) {
		    int pNo = product.getpNo();
		    ProductVO pvo = productService.selectProduct(pNo);
		    
		    int index = pvo.getpName().indexOf(" ");
		    String CompanyName = pvo.getpName().substring(0, index);
		    
		    // comName을 각 ProductVO에 추가
		    product.setComName(CompanyName.toUpperCase());
		}
		
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
	//카카오로그인
	@PostMapping("/kakao/callback")
	public String kakaoCallback(@ModelAttribute("mvo") MemberVO member, HttpServletRequest request,ModelMap model,HttpSession session) {
		member.setUserPwd(member.getUserEmail());
		MemberVO mvo = mainService.selectLogin(member);
		if(mvo != null && mvo.getUserEmail() != null && !mvo.getUserEmail().equals("")) {
			
			if(mvo.getUserEmail() != null) {
				request.getSession().setAttribute("member", mvo);
				return "redirect:/";
			}else {
				session.setAttribute("msg", "로그인 정보가 올바르지 않습니다.");
				return "redirect:/login.do";
			}
			}else {
			MemberVO kakao = member;
			kakao.setUserEmail(member.getUserEmail());
			kakao.setUserPwd("");
//			kakao.setUserCreate("");
			kakao.setMngYn("");
			kakao.setUserYn("");
			kakao.setUseYn("");
			
			memberService.join(kakao);
			
		session.setAttribute("member", kakao);
			
		}
	
		return "redirect:/";
	}
	
	//로그아웃
	@GetMapping("/logout")
	String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	

	
	
	//카테고리페이지
	@GetMapping("/list")
	String list(Model model ,Pager pager) {
		
//		pager.setKeyword("");
		pager.setPerPage(12);
		List<ProductVO> list = mainService.selectProductList(pager);
		
		model.addAttribute("list", list);
		
		return "list";
	}
	
	//카테고리페이지
		@GetMapping("/list_product")
		String list_product(Model model ,Pager pager) {
			
//			pager.setKeyword("");
			pager.setPerPage(12);
			List<ProductVO> list = mainService.selectProductList(pager);
			
			model.addAttribute("list", list);
			
			return "list_product";
		}
	
	@ResponseBody
	@GetMapping("/getList")
	List<ProductVO> getList(Model model ,Pager pager) {
		
//		pager.setKeyword("");
		pager.setPerPage(12);
		 return mainService.selectProductList(pager);
	}

}
