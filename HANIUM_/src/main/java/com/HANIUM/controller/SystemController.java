package com.HANIUM.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.HANIUM.service.SystemService;
import com.HANIUM.vo.SystemVO;

@Controller
public class SystemController {
	
private static final Logger logger = LoggerFactory.getLogger(SystemController.class);
	
	@Inject
	SystemService service;

	
	@RequestMapping(value = "system/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		
		model.addAttribute("list",service.list());
		
		
		return "system/list";
		
	}
	
	/*
	 * @RequestMapping(value = "/classify", method = RequestMethod.GET) public
	 * String classifylist(Model model) throws Exception{ logger.info("list");
	 * 
	 * model.addAttribute("list",service.list());
	 * 
	 * 
	 * return "system/classify";
	 * 
	 * }
	 */
	
	@RequestMapping(value = "/system/classify", method = RequestMethod.POST)
	public String systemInsert(SystemVO systemVO) throws Exception {
		logger.info("system insrt and classify");
		
		SystemVO classified = service.systemClassify(systemVO);
		service.systemInsert(classified);
		
		return "redirect:/system/list";
		
	}
}
