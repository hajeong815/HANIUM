package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.common.ReportSearch;
import com.HANIUM.dao.ReportDAO;
import com.HANIUM.vo.NonconfirmResultVO;
import com.HANIUM.vo.NonconfirmVO;
import com.HANIUM.vo.ReportVO;
import com.HANIUM.vo.SystemVO;

@Service
public class ReportServiceImpl implements ReportService{

	
	@Inject
	private ReportDAO dao;
	
	@Override
	public List<NonconfirmVO> list() throws Exception {
		return dao.list();
	}
	
	
	@Override

	public List<NonconfirmResultVO> getReportList(ReportSearch reportSearch) throws Exception {
		return dao.getReportList(reportSearch);
	}

	
	@Override
	public NonconfirmResultVO read(int id) throws Exception {
		return dao.read(id);
	}
	
	/*@Override
	public void update(ReportVO reportVO) throws Exception {

		dao.update(reportVO);
	}*/
	
	@Override
	public void update(NonconfirmResultVO nonconfirmResultVO) throws Exception {
	    dao.update(nonconfirmResultVO);
	}
	
	@Override
	public void delete(int id) throws Exception {		
		dao.delete(id);
	}


	
}
