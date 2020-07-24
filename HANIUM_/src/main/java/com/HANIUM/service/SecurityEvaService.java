package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.DAVO;

public interface SecurityEvaService {
	public List<DAVO> list() throws Exception;
	public void item(HashMap<String, Object> paramMap);
	public List<DAVO> getSecurityEva() throws Exception;

}
