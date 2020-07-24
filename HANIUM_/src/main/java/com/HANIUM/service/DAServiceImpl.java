package com.HANIUM.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.DADAO;
import com.HANIUM.vo.DAVO;

@Service
public class DAServiceImpl implements DAService{

	
	@Inject
	private DADAO dao;
	
	@Override
	public List<DAVO> list() throws Exception {

		return dao.list();
	}
	
	@Override
	public List<DAVO> CDAlist() throws Exception{
		
		return dao.CDAlist();
	}
}
