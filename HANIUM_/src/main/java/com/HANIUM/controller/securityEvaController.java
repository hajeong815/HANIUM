package com.HANIUM.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.HANIUM.service.SecurityEvaService;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.NonconfirmVO;

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
	
	@RequestMapping(value = "/itemList", method = RequestMethod.GET)
	public String SecurityEvalist(Model model) throws Exception{
		logger.info(":::::::securityEva:::::::::");
		
		model.addAttribute("list",service.getSecurityEva());
		
		
		return "security/itemList";
		
	}

	
	@RequestMapping(value="/insertForm")
	public String securityEvaInsertForm(@RequestParam("id") int id, Model model) {
		logger.info("::securityEvaInsert");
		
		String Cda_mapping = "pc/server";
		
		List<InspectionResultVO> iresultvoList = new ArrayList<InspectionResultVO>();
		iresultvoList = service.getInsAlterList(Cda_mapping);
		
		model.addAttribute("list", iresultvoList);
	
		return  "security/create";
	}
	
	@ResponseBody
	@RequestMapping(value="/insert")
	public String securityEvaInsert(@RequestParam HashMap<String, Object> paramMap) {
		logger.info("::::securityEvaInsert:::");
		logger.info("param = " + paramMap);

		if (((String) paramMap.get("eva_done_yn")).equals("0")) {
			JSONArray array = new JSONArray(paramMap.get("noncon_ins_id").toString());
			List<Object> list = array.toList();
			
			ArrayList<NonconfirmVO> nonList = new ArrayList<NonconfirmVO>();
			for (int i = 0; i < list.size(); i++) {
				NonconfirmVO nvo = new NonconfirmVO();
				nvo.setCda_code((String) paramMap.get("cda_code"));
				nvo.setSolution((String) paramMap.get("popSolution"));
				nvo.setNoncon_period((String) paramMap.get("popPeriod"));
				nvo.setNoncon_ins_id((Integer) list.get(i));
				
				nonList.add(nvo);
			}
			
			service.insertNoncon(nonList);
		}
		
		service.insertEva(paramMap);
		
		return "success";
	}


	
}
