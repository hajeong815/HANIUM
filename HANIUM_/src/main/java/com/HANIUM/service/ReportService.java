package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.HANIUM.common.ReportSearch;
import com.HANIUM.vo.ReportVO;
import com.HANIUM.vo.SystemVO;

public interface ReportService {
	public List<ReportVO> list() throws Exception;
	
	public List<ReportVO> getReportList(ReportSearch reportSearch) throws Exception;
	
	//상세 조회
	public ReportVO read(int bno) throws Exception;
	
	// 게시물 수정
	public void update(ReportVO reportVO) throws Exception;
	
		
	// 게시물 삭제
	public void delete(int bno) throws Exception;

	public List<ReportVO> getListModal(String cda_name) throws Exception;
	 

}
