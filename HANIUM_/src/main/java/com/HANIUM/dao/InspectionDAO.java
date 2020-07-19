package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.InspectionVO;

public interface InspectionDAO {
	public List<InspectionVO> getInspectionList();
	public void insertInspection(HashMap<String, String> paramMap);
}
