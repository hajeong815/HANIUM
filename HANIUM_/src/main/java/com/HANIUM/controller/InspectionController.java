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

import com.HANIUM.common.Search;
import com.HANIUM.service.InspectionService;
import com.HANIUM.vo.InspectionResultVO;
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
	public String getInspectionList(Model model
			, @RequestParam(required=false) String cda_mapping
			, @RequestParam(required=false) String inspect_group
			, @RequestParam(required=false) String inspect_group_list) throws Exception{
		logger.info("getInspectionList::::");
		logger.info("cda_mapping = " + cda_mapping + " inspect_group = " + inspect_group
					+ " inspect_group_list = " + inspect_group_list);
		
		// 검색 객체 생성
		Search search = new Search();
		search.setCda_mapping(cda_mapping);
		search.setInspect_group(inspect_group);
		search.setInspect_group_list(inspect_group_list);
		
		// 기술적 보안조치항목 리스트
		List<InspectionResultVO> iresultvoList = new ArrayList<InspectionResultVO>();
		iresultvoList = inspectService.getInspectionResultList(search);
		model.addAttribute("list", iresultvoList);	
		
		// 점검 분류
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
		
		logger.info(paramMap.toString());
		//{inspect_group=10, inspect_group_list=2, alter_measure=test}
		inspectService.insertInspection(paramMap);
		
		
		return "redirect:/inspection/list";
	}
	
	@RequestMapping(value = "/search")
	public String inspectionSearch(@RequestParam HashMap<String, String> paramMap, Model model) {
		logger.info("inspectionSearch::::");
		logger.info(paramMap.toString());
		
		String inspect_group = paramMap.get("inspect_group");
		logger.info(inspect_group);
		
		if (inspect_group == "") {
			logger.info("갈갈갈");
		}
		
		model.addAttribute("test", "test!!");
		
		return "redirect:/inspection/list";
	}
}
