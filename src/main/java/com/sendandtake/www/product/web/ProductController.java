package com.sendandtake.www.product.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;


import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.model.ReviewVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	//상품리스트
	@GetMapping("/productList.do")
	String productList(Model model) {
		
		List<ProductVO> productlist = productService.selectProductList();
	
		model.addAttribute("plist", productlist);
		return "product/productList";
	}
	
	//상세페이지
	@GetMapping("/detail.do")
	String detail(ProductVO pvo, Model model, HttpSession session) {
		System.out.println("겟"); //1 -> 상품코드
		System.out.println(pvo.getpNo()); //1 -> 상품코드
		
		List<ReviewVO> rvList = productService.selectReviewList(pvo.getpNo());
		
		
		model.addAttribute("rvList", rvList);
		
		//model.addAttribute("pvo", pvo);
		//session.setAttribute("pNo", pvo.getpNo());
		
		return "detail/detail";
	}
	
	@ResponseBody
	@PostMapping("/rvSave.do")
		String rvSave (int pNo, String rvContent, String rvImg, @SessionAttribute("loginUser") MemberVO mvo) {
		
		ReviewVO rvo = new ReviewVO();
		
		rvo.setpNo(pNo);
		
		rvo.setRvContent(rvContent);
		
		rvo.setRvImg(rvImg);
		
		rvo.setUserEmail(mvo.getUserEmail());
		
		rvo.setUserNo(mvo.getUserNo());
		
		
		
		productService.insertReview(rvo);
		
		
		return "clear";
	}
	
	
	
}
