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
			, @RequestParam(required=false) String measure_content
			, @ModelAttribute("search") ReportSearch reportSearch) throws Exception{
		
		logger.info(":::::::Report List:::::::::");
		logger.info("cda_type = " + cda_type + "/ cda_code = " + cda_code
				+ "/ cda_name = " + cda_name + "/ period = " + period + "/ content = " + content + "/ measure_content = " + measure_content);
		
		// 검색 객체 생성
		model.addAttribute("search", reportSearch);
		reportSearch.setContent(content);
		reportSearch.setMeasure_content(measure_content);
		
		List<ReportVO> reportList = new ArrayList<ReportVO>();
		reportList = service.getReportList(reportSearch);
		model.addAttribute("list", reportList);		

		
		//model.addAttribute("list", service.getReportList(reportSearch));

		
		return "report/list";
		
	}
		
		//보고서 상세 조회
		@RequestMapping(value="/item", method = {RequestMethod.GET, RequestMethod.POST})
		public String getBoardContent(@RequestParam("bno") int bno, @ModelAttribute("reportVO") ReportVO reportVO, Model model) throws Exception {
			
			logger.info("::::::::::item List::::::::::");			

			//model.addAttribute("itemList", service.read(bno));
			model.addAttribute("itemList", service.read(reportVO.getBno()));
			service.read(bno);
			
			return "report/item";		
		}
		
		
		// 보고서 수정
		@RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
		public String update(ReportVO reportVO) throws Exception{
			logger.info("::::::::::::update::::::::::::");	
			logger.info(reportVO.toString());
			
			service.update(reportVO);
			
			return "redirect:/report/list";
		}


		// 보고서 삭제
		@RequestMapping(value = "/delete", method = {RequestMethod.GET, RequestMethod.POST})
		public String delete(@RequestParam("bno") int bno, ReportVO reportVO) throws Exception{
			logger.info(":::::::::::::delete:::::::::::::");
			
			service.delete(bno);
			
			return "redirect:/report/list";
		}
		
		
		@RequestMapping(value = "/editForm", method = RequestMethod.GET)
		public String editForm(@RequestParam("bno") int bno, @RequestParam("mode") String mode, Model model) throws Exception {

			model.addAttribute("boardContent", service.read(bno));
			model.addAttribute("mode", mode);
			model.addAttribute("reportVO", new ReportVO());
			return "report/editForm";
		}

		

}
