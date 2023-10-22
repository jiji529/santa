package com.sendandtake.www.product.web;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
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
import com.sendandtake.www.product.model.SaleProductVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	//상세페이지
	@GetMapping("/detail.do")
	String detail(int pNo, Model model, ReviewVO rvo, SaleProductVO svo, HttpSession session) {
		
		//상품 하나 불러오기
		ProductVO pvo = productService.selectProduct(pNo);
		
		model.addAttribute("pvo", pvo);
		session.setAttribute("productVO", pvo);
		
		//회사명 CompanyName -> ${comName}
		int index = pvo.getpCode().indexOf("_");
		
		String CompanyName = pvo.getpCode().substring(0, index);

		model.addAttribute("comName", CompanyName.toUpperCase());
		
		//리뷰 리스트 불러오기
		List<ReviewVO> rvList = productService.selectReviewList(pNo);
		
		model.addAttribute("rvList", rvList);	
		
		//최근거래가, 직전구하기 -> (최근거래가-직전거래가)/직전거래가 * 100
		List<SaleProductVO> TwoPrices = productService.selectSaleProduct(pNo);
		
		int p1;
		int p2;
		int priceGap;
		
		//거래내역이 1개 이하일 때
		if(TwoPrices.size() <= 1) {
			
			priceGap = 0;
			model.addAttribute("gap", priceGap);
			model.addAttribute("tp", "-");
			
		} else {
			
			p1 = TwoPrices.get(0).getSalePrice();
			p2 = TwoPrices.get(1).getSalePrice();
			
			//최근거래가-직전거래가
			priceGap = Math.abs(p1 - p2);

			//(최근거래가-직전거래가)/직전거래가 * 100
			double result = (double)((p1 - p2)*100/p2);
			double ratio = Math.ceil(result);
						
			model.addAttribute("gap", priceGap);
			model.addAttribute("tp", ratio);
		}
		
		//관심 개수 가져오기
		int LikeCount = productService.selectLikeCnt(pNo);
		
		model.addAttribute("likeCnt", LikeCount);
		
		return "detail/detail";
	}
	
	@GetMapping("/likeActive/ajax")
	Map<String, Integer> likeActive (int pNo) {
		
		Map<String, Integer> likeCntMap = new HashMap<String, Integer>();
		
		int LikeCount = productService.selectLikeCnt(pNo);
		
		likeCntMap.put("likeCnt", LikeCount);
		
		return likeCntMap;
	}
	
	
	@ResponseBody
	@PostMapping("/rvSave/ajax")
	Map<String, ReviewVO> rvSave (ReviewVO rvo, @SessionAttribute("loginUser") MemberVO mvo, HttpServletRequest req){
		
		Map<String, ReviewVO> rmap = new HashMap<String, ReviewVO>();
		
		final String webPath = "/resources/upload/";
		
		//상대경로 
		final String folderPath = req.getSession().getServletContext().getRealPath(webPath);
		
		System.out.println("상대경로 : "+ folderPath);
		
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
				
				System.out.println(uniquefilename);
				System.out.println(fileExtension);
				
				file.transferTo(new File(folderPath + uniquefilename + fileExtension));
				
				//jsp로 이미지파일 불러오기 위한 준비(+)
				rvo.setRvNewImg(uniquefilename);
				
				rvo.setRvExtn(fileExtension);
				
				productService.insertReview(rvo);
				
				//리뷰 구역 ajax로 띄우기.
				ReviewVO r = productService.selectReview(rvo.getRvNewImg());			
				rmap.put("rOne", r);
				
			} catch (Exception e) {				
				e.printStackTrace();
			}
	
		}
		
		return rmap;
	}
	
}
