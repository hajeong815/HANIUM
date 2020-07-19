package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import com.HANIUM.vo.SystemVO;

public interface SecurityEvaService {
	public List<SystemVO> list() throws Exception;
	public void item(HashMap<String, Object> paramMap);

}
