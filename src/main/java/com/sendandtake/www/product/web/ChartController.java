package com.sendandtake.www.product.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import com.sendandtake.www.product.service.ProductService;

@Controller
public class ChartController {

	@Autowired
	ProductService productService;
	
	@GetMapping("/chartTest")
	String chart () {
		
		//pNo=1인 S등급 상품의 chart 띄우기 위한 Map을 만들어 보쟈..!
		//chartMap =[Sx:{}, Sy:{}]
		
		/*
		 * ProductVO chart_data= productService.selectProduct(pNo);
		 * 
		 * ArrayList<String> chartList = new ArrayList<String>();
		 * chartList.add(chart_data.getSx()); chartList.add(chart_data.getSy());
		 * 
		 * Map<String, ArrayList<String>> CMap = new HashMap<String,
		 * ArrayList<String>>(); CMap.put("Sx", chartList.get(0)); CMap.put("Sy",
		 * chartList.get(1));
		 * 
		 * model.addAttribute("ChartMap", CMap);
		 */

		return "chart";
	}
	
}
