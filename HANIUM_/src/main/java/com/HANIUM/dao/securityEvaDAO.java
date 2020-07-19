package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.SystemVO;

public interface securityEvaDAO {
	public List<SystemVO> list() throws Exception;

	public void item(HashMap<String, Object> paramMap);
	
 
}
