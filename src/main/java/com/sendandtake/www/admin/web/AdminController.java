package com.sendandtake.www.admin.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.main.service.MainService;

@Controller
public class AdminController {

	@Autowired
	MainService  mainService;
	
//	@Autowired
//	AdminService adminService;
	
	//고객문의
	@GetMapping("/support.do")
	String support(Model model) {
		
		List<MemberVO> list = mainService.selectMemberList();
		
		model.addAttribute("list", list);
		
		return "support";
	}
	
}
