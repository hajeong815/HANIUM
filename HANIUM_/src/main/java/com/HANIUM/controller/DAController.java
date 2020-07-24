package com.HANIUM.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.HANIUM.service.DAService;

@Controller
@RequestMapping("/DA/*")
public class DAController {
	
private static final Logger logger = LoggerFactory.getLogger(DAController.class);
	
	@Inject
	DAService service;

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		
		model.addAttribute("list",service.list());
		
		
		return "DA/list";
		
	}
	
	@SuppressWarnings("unlikely-arg-type")
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	@ResponseBody
	public void CDACheck(HttpServletResponse response, @RequestParam(value = "valueArrDA[]") List<String> valueArr) throws Exception{
	    for(int i = 0 ; i<valueArr.size(); i++) {
	    	if(valueArr.get(i).equals('X')) {
	    		response.setContentType("text/html; charset=UTF-8");
	    		PrintWriter out = response.getWriter();
	    		out.println("<script>alert('CDA°¡ ¾Æ´Õ´Ï´Ù.'); location.href='list.jsp';</script>");
	    		out.flush();
	    	}
	    }
	}

}