package com.HANIUM.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.HANIUM.service.SystemService;

@Controller
@RequestMapping("/system/*")
public class SystemController {
	
private static final Logger logger = LoggerFactory.getLogger(SystemController.class);
	
	@Inject
	SystemService service;

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		
		model.addAttribute("list",service.list());
		
		
		return "system/list";
		
	}
}
