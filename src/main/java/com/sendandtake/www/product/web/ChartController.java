package com.sendandtake.www.product.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sendandtake.www.product.model.ChartVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class ChartController {

	@Autowired
	ProductService productService;

	
	@GetMapping("/chartTest")
	String chartTest() {
		
		return "detail.detail";
	}
	
	@ResponseBody
	@GetMapping("/ajax/chartTest")
	Map<String, List<ChartVO>> chart(int pNo) {

		List<ChartVO> chartList = productService.selectXyList(pNo);

		List<ChartVO> SList = new ArrayList<ChartVO>(); 
		List<ChartVO> AList = new ArrayList<ChartVO>(); 
		List<ChartVO> BList = new ArrayList<ChartVO>();
		

		for (ChartVO cl : chartList) {

			
			 if (cl.getGrade().equals("S")) { 
			 SList.add(cl);
			 } 
			 else if (cl.getGrade().equals("A")) {
				 AList.add(cl);
			 } else {
				 BList.add(cl);
			 }
		}
		
		Map<String, List<ChartVO>> chartMap = new HashMap<String, List<ChartVO>>();
		
		chartMap.put("SL", SList);
		chartMap.put("AL", AList);
		chartMap.put("BL", BList);
		
		return chartMap;
	}

}
