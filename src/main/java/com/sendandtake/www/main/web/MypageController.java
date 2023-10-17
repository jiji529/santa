package com.sendandtake.www.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	//마이페이지
	@GetMapping("/mypage")
	String page() {
		
		return "mypage/mypage";
	}
	
	
	//구매내역
	@GetMapping("/buying")
	String buying() {
		
		return "mypage/buying";
	}
	
	
	//판매내역
	@GetMapping("/selling")
	String selling() {
		return "mypage/selling";
	}
	
	//관심상품
	@GetMapping("/saved")
	String saved() {
		return "mypage/saved";
	}
}
