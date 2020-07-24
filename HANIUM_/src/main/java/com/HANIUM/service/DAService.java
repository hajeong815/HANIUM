package com.HANIUM.service;

import java.util.List;

import com.HANIUM.vo.DAVO;

public interface DAService {
	public List<DAVO> list() throws Exception;
	void DAInsert(DAVO vo);

}