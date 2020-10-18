package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.HANIUM.common.ReportSearch;
import com.HANIUM.vo.NonconfirmResultVO;
import com.HANIUM.vo.NonconfirmVO;
import com.HANIUM.vo.ReportVO;
import com.HANIUM.vo.SystemVO;

public interface ReportService {
	public List<NonconfirmVO> list() throws Exception;
	
	public List<NonconfirmResultVO> getReportList(ReportSearch reportSearch) throws Exception;
	
	//상세 조회
	public NonconfirmResultVO read(int id) throws Exception;
	
	// 게시물 수정
	public void update(NonconfirmResultVO nonconfirmResultVO) throws Exception;
	
		
	// 게시물 삭제
	public void delete(int id) throws Exception;

	 

}
