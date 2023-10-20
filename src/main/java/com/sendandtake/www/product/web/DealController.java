package com.sendandtake.www.product.web;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.model.SaleProductVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class DealController {
	
	@Autowired
	ProductService productService;
	
	//상품구매
	@GetMapping("/buy")
	String buy(int pNo, Model model,@SessionAttribute("productVO") ProductVO pvo) {
		
		List<SaleProductVO> priceList = productService.selectPriceList(pNo);
		
		for (SaleProductVO pList : priceList) {
			if(pList.getGrade().equals("S")) {
				model.addAttribute("Sprice", pList.getSalePrice());
			}
			else if(pList.getGrade().equals("A")) {
				model.addAttribute("Aprice", pList.getSalePrice());
			}
			else {
				model.addAttribute("Bprice", pList.getSalePrice());
			}
		}
		
		model.addAttribute("pvo", pvo);
		
		return "product/buy";
	}
	
	//상품구매동의
	@GetMapping("/buycheck")
	String buycheck(String grade, @SessionAttribute("productVO") ProductVO pvo, Model model) {
		
		System.out.println("grade : " + grade);
		
		pvo.setGrade(grade);
		
		model.addAttribute("pvo", pvo);
		
		return "product/buycheck";
	}
	
	//상품구매종류선택
	@GetMapping("/buyinput")
	String buyinput(@SessionAttribute("productVO") ProductVO pvo, Model model) {
		
		model.addAttribute("pvo", pvo);
		
		return "product/buyinput";
	}
	
	//상품구매 배송/결제
	@GetMapping("/buypay")
	String buypay() {
		return "product/buypay";
	}
	
	//상품구매완료
	@GetMapping("/buycomplete")
	String buycomplete() {
		return "product/buycomplete";
	}
	
	//상품판매
	@GetMapping("/sell")
	String sell() {
		return "product/sell";
	}
	//상품판매동의
	@GetMapping("/sellcheck")
	String sellcheck() {
		return "product/sellcheck";
	}
	
	//상품판매 반송/결제
	@GetMapping("/sellpay")
	String sellpay() {
		return "product/sellpay";
	}
	//상품판매신청완료
	@GetMapping("/sellcomplete")
	String sellcomplete() {
		return "product/sellcomplete";
	}
	
}
