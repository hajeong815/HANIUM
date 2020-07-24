package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.securityEvaDAO;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.NonconfirmVO;
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

	@Override
	public List<InspectionResultVO> getInsAlterList(String Cda_mapping) {
		return dao.getInsAlterList(Cda_mapping);
	}

	@Override
	public void insertEva(HashMap<String, Object> paramMap) {
		dao.insertEva(paramMap);
	}

	@Override
	public void insertNoncon(List<NonconfirmVO> paramMap) {
		dao.insertNoncon(paramMap);
	}
}
