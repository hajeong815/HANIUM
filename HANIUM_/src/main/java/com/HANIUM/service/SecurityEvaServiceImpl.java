package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.securityEvaDAO;
import com.HANIUM.vo.SystemVO;

@Service
public class SecurityEvaServiceImpl implements SecurityEvaService{

	
	@Inject
	private securityEvaDAO dao;
	
	@Override
	public List<SystemVO> list() throws Exception {

		return dao.list();
	}
	
	@Override
	public void item(HashMap<String, Object> paramMap) {
		dao.item(paramMap);
	}
}
