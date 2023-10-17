package com.sendandtake.www.product.web;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
	
	//상세페이지
	@GetMapping("/detail.do")
	String detail(int pNo, Model model, ReviewVO rvo) {
		
		//상품 하나 불러오기
		ProductVO productOne = productService.selectProduct(pNo);
		
		//테스트 부분
		System.out.println("제품번호는???" + pNo);
		System.out.println("네가 가져온 제품 한 줄의 pNo는?" + productOne.getpNo());
		System.out.println(productOne.getpImg1());
		System.out.println(productOne.getReleasePrice());
		System.out.println("최근거래가는???" + productOne.getRecentPrice());
		System.out.println("pCode" + productOne.getpCode());
		System.out.println("pNo 2의 즉시구매가???" + productOne.getImmediatePurchacePrice());
		
		//회사명 CompanyName -> ${comName}
		int index = productOne.getpCode().indexOf("_");
		
		String CompanyName = productOne.getpCode().substring(0, index);
		
		System.out.println("회사명은??" + CompanyName);

		model.addAttribute("comName", CompanyName.toUpperCase());
		
		model.addAttribute("product", productOne);
		
		
		//리뷰 리스트 불러오기
		List<ReviewVO> rvList = productService.selectReviewList(pNo);
		
		model.addAttribute("rvList", rvList);	
		
		
		return "detail/detail";
	}
	
	
	@ResponseBody
	@PostMapping("/rvSave/ajax")
		String rvSave (ReviewVO rvo, @SessionAttribute("loginUser") MemberVO mvo){
		
		final String uploadPath = "/home/poly4/upload/";
		
		System.out.println(rvo.getpNo());
		
		//로그인 처리(+)
		rvo.setUserNo(mvo.getUserNo());
		rvo.setUserEmail(mvo.getUserEmail());
		
		
		//첨부파일
		MultipartFile file = rvo.getRvImg();
		
		if(file != null && !file.isEmpty()) {
			
			String filename = file.getOriginalFilename();
			
			//랜덤 파일 이름
			UUID uuid = UUID.randomUUID();
			String[] uuids = uuid.toString().split("-");
			
			String uniquefilename = uuids[0];
			
			//확장자 명
			String fileExtension = filename.substring(filename.lastIndexOf("."), filename.length());
			
			try {
				
				file.transferTo(new File(uploadPath + uniquefilename + fileExtension));
				
				//jsp로 이미지파일 불러오기 위한 준비(+)
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
	String buy(int pNo) {
		
		System.out.println(pNo);
		
		
		
		return "product/buy";
	}
	
	//상품구매동의
	@GetMapping("/buycheck.do")
	String buycheck(int pNo) {
		
		
		return "product/buycheck";
	}
	
	//상품구매동의
	@GetMapping("/buyinput.do")
	String buyinput() {
		return "product/buyinput";
	}
	
	//상품구매동의
	@GetMapping("/pay.do")
	String pay() {
		return "product/pay";
	}
	
}
