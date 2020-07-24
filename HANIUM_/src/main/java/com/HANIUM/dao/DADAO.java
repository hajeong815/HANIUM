package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.DAVO;

public interface DADAO {
	public List<DAVO> list() throws Exception;
	public List<DAVO> CDAlist() throws Exception;
	
	public void item(HashMap<String, Object> paramMap);
	
}
