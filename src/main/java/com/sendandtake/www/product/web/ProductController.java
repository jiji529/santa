package com.sendandtake.www.product.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.sendandtake.www.main.model.MemberVO;
import com.sendandtake.www.product.model.ProductVO;
import com.sendandtake.www.product.model.ReviewVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	List<ReviewVO> rvList = new ArrayList<ReviewVO>();
	
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
		
		rvList = productService.selectReviewList(pvo.getpNo());
		
		model.addAttribute("rvList", rvList);
		
		model.addAttribute("pvo", pvo);
		
		
		return "detail/detail";
	}
	
	@ResponseBody
	@PostMapping("/rvSave/ajax")
		String rvSave (ReviewVO rvo
				//, @SessionAttribute("loginUser") MemberVO mvo
				){
		final String uploadPath = "C:/upload/";
		
		//로그인 처리(-)
		rvo.setUserNo(1);
		rvo.setUserEmail("dkwk3185@naver.com");
		
		
		//첨부파일
		MultipartFile file = rvo.getRvImg();
		
		if(file != null && !file.isEmpty()) {
			
			String filename = file.getOriginalFilename();
			
			UUID uuid = UUID.randomUUID();
			String[] uuids = uuid.toString().split("-");
			
			String uniquefilename = uuids[0];
			
			//확장자 명
			String fileExtension = filename.substring(filename.lastIndexOf("."), filename.length());
			
			try {
				
				file.transferTo(new File(uploadPath +uniquefilename + fileExtension));
				
				rvo.setRvNewImg(uniquefilename);
				
				rvo.setRvExtn(fileExtension);
				
				productService.insertReview(rvo);
				
			} catch (Exception e) {				
				e.printStackTrace();
			}
		}
		
		
		return "OK";
	}
	
	//상품구매
	@GetMapping("/buy.do")
	String buy() {
		return "product/buy";
	}
	
}
