package com.HANIUM.service;

import java.util.List;

import com.HANIUM.vo.SystemVO;

public interface SystemService {
	public List<SystemVO> list() throws Exception;
	
	public void systemInsert(SystemVO systemVO) throws Exception;
	
	public SystemVO systemClassify(SystemVO systemVO) throws Exception;

}
