package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.DAVO;

public interface DADAO {
	public List<DAVO> list() throws Exception;
	public void insertDA(HashMap<String, Object> paramMap);
}
