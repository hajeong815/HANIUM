package com.HANIUM.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.HANIUM.service.DAService;
import com.HANIUM.service.SystemService;
import com.HANIUM.vo.DAVO;
import com.HANIUM.vo.SystemVO;

@Controller
@RequestMapping("/DA/*")
public class DAController {

	private static final Logger logger = LoggerFactory.getLogger(DAController.class);

	@Inject
	DAService daService;

	@Inject
	SystemService systemService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		List<DAVO> daVOList = daService.list();
		List<SystemVO> systemVOList = systemService.list();

		model.addAttribute("list", daVOList);
		model.addAttribute("systemList", systemVOList);

		return "DA/list";

	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertDA(@RequestParam HashMap<String, Object> paramMap) throws Exception {
		logger.info("==insertDAinsertDAinsertDAinsertDA===");
		logger.info("이전의 MAP!!");
		
		for(Map.Entry entry : paramMap.entrySet()){
		     System.out.println(entry.getKey());
		     System.out.println(entry.getValue());
	    }

		int IS_CRITICAL = 1;
		String CDA_TYPE = null;
		int SSEP_OR_NOT_CODE = 1;
		
		SystemVO systemVO = systemService.getOneBySystem_CODE(paramMap.get("CRI_SYSTEM_NO").toString());
		if (systemVO.getSystem_SSEP() == null || systemVO.getSystem_SSEP().isEmpty()) {
			SSEP_OR_NOT_CODE = 0;
		}
		
		// [1] 필수 디지털 자산 식별
		if (SSEP_OR_NOT_CODE == 0) {
			if (paramMap.get("CYBER_ATTACK_CODE").equals("영향 없음")) {
				IS_CRITICAL = 0;
			} else if (paramMap.get("DA_COMM").equals("없음")) {
				IS_CRITICAL = 0;
			}
		}
		// [2] 필수 디지털 자산 분류
		if (IS_CRITICAL == 1) {
			CDA_TYPE = daService.classifyCDAType(paramMap);
		}
		
		paramMap.put("SSEP_OR_NOT_CODE", SSEP_OR_NOT_CODE);
		paramMap.put("IS_CRITICAL", IS_CRITICAL);
		paramMap.put("CDA_TYPE", CDA_TYPE);
		
		logger.info("바뀐!! PARAMPAM == ");
		
		for(Map.Entry entry : paramMap.entrySet()){
		     System.out.println(entry.getKey());
		     System.out.println(entry.getValue());
	    }
		
		daService.insertDA(paramMap);

		return "redirect:/DA/list";
	}

	@SuppressWarnings("unlikely-arg-type")
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	@ResponseBody
	public void CDACheck(HttpServletResponse response, @RequestParam(value = "valueArrDA[]") List<String> valueArr)
			throws Exception {
		for (int i = 0; i < valueArr.size(); i++) {
			if (valueArr.get(i).equals('X')) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('CDA ƴմϴ.'); location.href='list.jsp';</script>");
				out.flush();
			}
		}
	}

}
