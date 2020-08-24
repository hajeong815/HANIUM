package com.HANIUM.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.HANIUM.common.ReportSearch;
import com.HANIUM.common.Search;
import com.HANIUM.service.ReportService;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.NonconfirmResultVO;
import com.HANIUM.vo.NonconfirmVO;
import com.HANIUM.vo.ReportVO;

@Controller
@RequestMapping("/report/*")
public class ReportController {
	
private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Inject
	ReportService service;

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model
			, @RequestParam(required=false) String cda_type
			, @RequestParam(required=false) String cda_code
			, @RequestParam(required=false) String cda_name
			, @RequestParam(required=false) String period
			, @RequestParam(required=false) String content
			, @RequestParam(required=false) String solution
			/*, @ModelAttribute("ReportSearch") ReportSearch reportSearch*/) throws Exception{
		
		logger.info(":::::::Report List:::::::::");
		logger.info("cda_type = " + cda_type + "/ cda_code = " + cda_code
				+ "/ cda_name = " + cda_name + "/ period = " + period + "/ content = " + content + "/ solution = " + solution);
		
		// 검색 객체 생성
		ReportSearch reportSearch = new ReportSearch();
		reportSearch.setCda_code(cda_code);
		reportSearch.setCda_type(cda_type);
		reportSearch.setCda_name(cda_name);
		reportSearch.setPeriod(period);
		reportSearch.setContent(content);
		reportSearch.setSolution(solution);

		logger.info(":::::::Report Search:::::::::");

		
		List<NonconfirmResultVO> reportList = new ArrayList<NonconfirmResultVO>();
		reportList = service.getReportList(reportSearch);
		model.addAttribute("list", reportList);		

		
		//model.addAttribute("list", service.getReportList(reportSearch));

		
		return "report/list";
		
	}
		
		//보고서 상세 조회
		@RequestMapping(value="/item", method = {RequestMethod.GET, RequestMethod.POST})
		public String getBoardContent(@RequestParam("id") int id, @ModelAttribute("NonconfirmResultVO") NonconfirmResultVO nonconfirmResultVO, Model model) throws Exception {
			
			logger.info("::::::::::item List::::::::::");			

			//model.addAttribute("itemList", service.read(bno));
			model.addAttribute("itemList", service.read(nonconfirmResultVO.getId()));
			service.read(id);
			
			return "report/item";		
		}
		
		
		// 보고서 수정
		@RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
		public String update(NonconfirmResultVO nonconfirmResultVO) throws Exception{
			logger.info("::::::::::::update::::::::::::");	
			logger.info(nonconfirmResultVO.toString());
			
			service.update(nonconfirmResultVO);
			
			return "redirect:/report/list";
		}


		// 보고서 삭제
		@RequestMapping(value = "/delete", method = {RequestMethod.GET, RequestMethod.POST})
		public String delete(@RequestParam("id") int id, NonconfirmResultVO nonconfirmResultVO) throws Exception{
			logger.info(":::::::::::::delete:::::::::::::");
			
			service.delete(id);
			
			return "redirect:/report/list";
		}
		

}
