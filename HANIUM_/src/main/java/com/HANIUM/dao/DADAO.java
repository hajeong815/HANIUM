package com.HANIUM.dao;

import java.util.List;

import com.HANIUM.vo.DAVO;


public interface DADAO {
	
	public List<DAVO> list() throws Exception;
	void DAInsert(DAVO vo);
	public void insertDA(String DA_name, DAVO vo);
 
}