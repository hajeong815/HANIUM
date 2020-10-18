package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.DAVO;

public interface DAService {
	public List<DAVO> list() throws Exception;
	public void insertDA(HashMap<String, Object> paramMap);
	public String classifyCDAType(HashMap<String, Object> paramMap);
}