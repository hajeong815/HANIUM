package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.DAVO;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.NonconfirmVO;

public interface securityEvaDAO {
	public List<DAVO> list() throws Exception;

	public void item(HashMap<String, Object> paramMap);
	
	public List<DAVO> getSecurityEva() throws Exception;
	
	
	public List<InspectionResultVO> getInsAlterList(String Cda_mapping);
	public void insertEva(HashMap<String, Object> paramMap);
	public void insertNoncon(List<NonconfirmVO> paramMap);

 
}


