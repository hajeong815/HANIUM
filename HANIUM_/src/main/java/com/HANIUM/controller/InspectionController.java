package com.HANIUM.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.HANIUM.service.InspectionService;
import com.HANIUM.vo.InspectionVO;
import com.HANIUM.vo.StandardInsVO;
import com.HANIUM.vo.StandardsVO;



@Controller
@RequestMapping("/inspection/*")
public class InspectionController {
	
private static final Logger logger = LoggerFactory.getLogger(SystemController.class);
	
	@Autowired
	InspectionService inspectService;

	@RequestMapping(value = "/list")
	public String getInspectionList(Model model) throws Exception{
		logger.info("list");
	
		List<InspectionVO> inspectVoList = new ArrayList<InspectionVO>();
		inspectVoList = inspectService.getInspectionList();
		model.addAttribute("list", inspectVoList);	
		
		
		
		// CREATE
		List<StandardsVO> standardsVoList = new ArrayList<StandardsVO>();
		standardsVoList = inspectService.getInsGroupFromStandard();
		model.addAttribute("groupList", standardsVoList);
	
		StandardsVO vo = new StandardsVO();
		vo = standardsVoList.get(0);
		int upper_type_no = vo.getUpper_code_type_no();
		
		// 점검항목명 
		List<StandardInsVO> stInsVoList = new ArrayList<StandardInsVO>();
		stInsVoList = inspectService.getInsGroupListFromStandard(upper_type_no);
		
//		for (int i = 0; i < stInsVoList.size(); i++) {
//			StandardInsVO voo = new StandardInsVO();
//			voo = stInsVoList.get(i);
//			System.out.println(voo.getContent());
//			
//		}
		
		model.addAttribute("insList", stInsVoList);
		
		return "inspection/list";
	}
	
	@RequestMapping(value = "/insert")
	public String inspectionInsert(@RequestParam HashMap<String, Object> paramMap) {
		System.out.println("::::inspectionInsert::::");
		System.out.println("::::inspectionInsert::::");
		
		System.out.println(paramMap);
		
		//@RequestParam HashMap<String, String> paramMap
		return "inspection/list";
	}
	

}
