package com.HANIUM.dao;

import java.util.List;

import com.HANIUM.vo.SystemVO;

public interface SystemDAO {
	//system list
	public List<SystemVO> list() throws Exception;
	
	//insert system
	public int insertSystem(SystemVO systemVO) throws Exception;
	
}
