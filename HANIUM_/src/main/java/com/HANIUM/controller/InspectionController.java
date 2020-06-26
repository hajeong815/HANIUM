package com.HANIUM.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HANIUM.service.InspectionService;
import com.HANIUM.vo.InspectionVO;
import com.HANIUM.vo.StandardCodeVO;
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
		
		// 1. CDA 유형 getList() -> addAttribute
		// 2. 보안영역 getList() -> addAttribute (Standards = 1)
		// getInsGroupFromStandard()
		List<StandardsVO> standardsVoList = new ArrayList<StandardsVO>();
		standardsVoList = inspectService.getInsGroupFromStandard();
		model.addAttribute("groupList", standardsVoList);
		
		StandardsVO vo = new StandardsVO();
		vo = standardsVoList.get(0);
		int upper_type_no = vo.getUpper_code_type_no();
		
		// 3. 점검분야 getList() -> addAttribute
		// getInsGroupListFromStandard()
		List<StandardCodeVO> standardCodeVoList = new ArrayList<StandardCodeVO>();
		standardCodeVoList = inspectService.getInsGroupListFromStandard(upper_type_no);
		System.out.println(standardCodeVoList);
		
		for (int i = 0; i < standardCodeVoList.size(); i++) {
			StandardCodeVO vo1 = new StandardCodeVO();
			vo1 = standardCodeVoList.get(i);
			System.out.println(vo1.getStandard_code());
			System.out.println(vo1.getUpper_standard_code());
			System.out.println(vo1.getCode_name());
		}
		

		return "inspection/list";
	}
	
	@RequestMapping(value = "/insert")
	public String inspectionInsert() {
		//@RequestParam HashMap<String, String> paramMap
		return "inspection/create";
	}
	

}
