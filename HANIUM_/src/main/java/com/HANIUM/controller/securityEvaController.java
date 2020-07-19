package com.HANIUM.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.HANIUM.service.SecurityEvaService;

@Controller
@RequestMapping("/security/*")
public class securityEvaController {
	
private static final Logger logger = LoggerFactory.getLogger(securityEvaController.class);
	
	@Inject
	SecurityEvaService service;

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info(":::::::securityEva:::::::::");
		
		model.addAttribute("list",service.list());
		
		
		return "security/list";
		
	}
	
	@RequestMapping(value = "/itemList")
	public String itemList(@RequestParam HashMap<String, Object> paramMap, Model model) throws Exception{
		logger.info(":::::::securityEva item List:::::::::");
		logger.info("-----item detailed contents-----" + paramMap.toString());
		
		service.item(paramMap);
		
		model.addAttribute("list", service.list());
		
		return "security/itemList";
		
	}
	
}
