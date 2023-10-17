package com.sendandtake.www.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {

	@GetMapping("/mypage")
	String page() {
		
		return "mypage/mypage";
	}
}
