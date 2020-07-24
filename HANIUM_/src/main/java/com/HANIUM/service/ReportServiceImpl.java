package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.common.ReportSearch;
import com.HANIUM.dao.ReportDAO;
import com.HANIUM.vo.ReportVO;
import com.HANIUM.vo.SystemVO;

@Service
public class ReportServiceImpl implements ReportService{

	
	@Inject
	private ReportDAO dao;
	
	@Override
	public List<ReportVO> list() throws Exception {

		return dao.list();
	}
	
	
	@Override

	public List<ReportVO> getReportList(ReportSearch reportSearch) throws Exception {

		return dao.getReportList(reportSearch);
	}

	
	@Override
	public ReportVO read(int bno) throws Exception {

		return dao.read(bno);
	}
	
	/*@Override
	public void update(ReportVO reportVO) throws Exception {

		dao.update(reportVO);
	}*/
	
	@Override
	public void update(ReportVO reportVO) throws Exception {
	    dao.update(reportVO);
	}
	
	@Override
	public void delete(int bno) throws Exception {
		
		dao.delete(bno);
	}

	@Override
	public List<ReportVO> getListModal(String cda_name) throws Exception {
		return dao.getListModal(cda_name);
	}
	
}
