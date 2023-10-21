package com.sendandtake.www.product.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sendandtake.www.product.model.SaleProductVO;
import com.sendandtake.www.product.service.ProductService;

@Controller
public class GraphController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/graphTest")
	String chartTest() {
		
		return "graphDeco";
	}
	
	@ResponseBody
	@GetMapping("/ajax/graphTest")
	Map<String, List<SaleProductVO>> chart(int pNo) {

		List<SaleProductVO> chartList = productService.selectXyList(pNo);

		List<SaleProductVO> SList = new ArrayList<SaleProductVO>(); 
		List<SaleProductVO> AList = new ArrayList<SaleProductVO>(); 
		List<SaleProductVO> BList = new ArrayList<SaleProductVO>();
		

		for (SaleProductVO cl : chartList) {

			
			 if (cl.getGrade().equals("S")) { 
			 SList.add(cl);
			 } 
			 else if (cl.getGrade().equals("A")) {
				 AList.add(cl);
			 } else {
				 BList.add(cl);
			 }
		}
		
		Map<String, List<SaleProductVO>> chartMap = new HashMap<String, List<SaleProductVO>>();
		
		chartMap.put("SL", SList);
		chartMap.put("AL", AList);
		chartMap.put("BL", BList);
		
		return chartMap;
	}

}
