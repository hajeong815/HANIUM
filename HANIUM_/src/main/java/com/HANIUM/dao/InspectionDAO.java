package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.InspectionVO;
import com.HANIUM.vo.StandardCodeVO;
import com.HANIUM.vo.StandardInsVO;
import com.HANIUM.vo.StandardsVO;

public interface InspectionDAO {
	public List<InspectionVO> getInspectionList();
	public void insertInspection(HashMap<String, String> paramMap);
	public List<StandardsVO> getInsGroupFromStandard();
	public List<StandardInsVO> getInsGroupListFromStandard(int upper_type_no);
}
