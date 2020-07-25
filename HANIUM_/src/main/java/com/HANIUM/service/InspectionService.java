package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.InspectionVO;

public interface InspectionService {
	public List<InspectionVO> getInspectionList();

	public void insertInspection(HashMap<String, String> paramMap);
}
