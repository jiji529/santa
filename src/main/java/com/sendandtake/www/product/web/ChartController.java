package com.sendandtake.www.product.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sendandtake.www.product.model.ChartVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class ChartController {

	@Autowired
	ProductService productService;
	
	@GetMapping("/chartTest")
	String chart() {
		
		return "chart";
	}

	@ResponseBody
	@PostMapping("ajax/SchartTest")
	Map<String, ArrayList<ChartVO>> Schart(int pNo) {


		System.out.println("ajax 상품번호??" + pNo);

		List<ChartVO> chartList = productService.selectXyList(pNo);

		ArrayList<ChartVO> SList = new ArrayList<>();
		ArrayList<ChartVO> AList = new ArrayList<>();
		ArrayList<ChartVO> BList = new ArrayList<>();
		
		for (ChartVO cl : chartList) {

			 if (cl.getGrade().equals("S")) { 
				 
				 SList.add(cl);
			 
			 } else if (cl.getGrade().equals("A")) {
				 
				 AList.add(cl);
			 
			 } else {
				 
				 BList.add(cl);
			 }
			
		}
		
		Map<String, ArrayList<ChartVO>> SchartMap = new HashMap<String, ArrayList<ChartVO>>();
		//Map<String, ArrayList<ChartVO>> AchartMap = new HashMap<String, ArrayList<ChartVO>>();
		//Map<String, ArrayList<ChartVO>> BchartMap = new HashMap<String, ArrayList<ChartVO>>();
		SchartMap.put("Slist", SList);
		//AchartMap.put("Alist", AList);
		//BchartMap.put("Blist", BList);

		return SchartMap;
	}

}
