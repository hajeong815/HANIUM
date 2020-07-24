package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.common.Search;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.InspectionVO;
import com.HANIUM.vo.StandardCodeVO;
import com.HANIUM.vo.StandardInsVO;
import com.HANIUM.vo.StandardsVO;

public interface InspectionService {
	public List<InspectionVO> getInspectionList();
	public void insertInspection(HashMap<String, Object> paramMap);
	public List<StandardsVO> getInsGroupFromStandard();
	public List<StandardInsVO> getInsGroupListFromStandard(int upper_type_no);
	public List<InspectionResultVO> getInspectionResultList(Search search);
	
}
