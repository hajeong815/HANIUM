package com.HANIUM.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.HANIUM.service.InspectionService;


@Controller
@RequestMapping("/inspection/*")
public class InspectionController {
	
private static final Logger logger = LoggerFactory.getLogger(SystemController.class);
	
	@Autowired
	InspectionService inspectService;

	@RequestMapping(value = "/list")
	public String inspectionList(Model model) throws Exception{
		logger.info("list");
		
		return "inspection/list";
		
	}
	
	@RequestMapping(value = "/insert")
	public String inspectionInsert() {
		//@RequestParam HashMap<String, String> paramMap
		return "inspection/create";
	}
	

}
