package com.HANIUM.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.DADAO;
import com.HANIUM.vo.DAVO;

@Service
public class DAServiceImpI implements DAService{

	
	@Inject
	private DADAO dao;
	
	@Override
	public List<DAVO> list() throws Exception {

		return dao.list();
	}
	
	@Override
	public void DAInsert(DAVO vo) {
		dao.insertDA("DAMapper.insertDA", vo);

	}
}
