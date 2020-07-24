package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.DADAO;
import com.HANIUM.dao.securityEvaDAO;
import com.HANIUM.vo.DAVO;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.NonconfirmVO;

@Service
public class SecurityEvaServiceImpl implements SecurityEvaService{

	
	@Inject
	private securityEvaDAO securityEvadao;
	private DADAO daDAO;
	
	@Override
	public List<DAVO> list() throws Exception {

		return securityEvadao.list();
	}
	
	@Override
	public void item(HashMap<String, Object> paramMap) {
		securityEvadao.item(paramMap);
	}

	@Override
	public List<DAVO> getSecurityEva() throws Exception {
		// TODO Auto-generated method stub
		return securityEvadao.getSecurityEva();
	}
	
	
	@Override
	public List<InspectionResultVO> getInsAlterList(String Cda_mapping) {
		return securityEvadao.getInsAlterList(Cda_mapping);
	}

	@Override
	public void insertEva(HashMap<String, Object> paramMap) {
		securityEvadao.insertEva(paramMap);
	}

	@Override
	public void insertNoncon(List<NonconfirmVO> paramMap) {
		securityEvadao.insertNoncon(paramMap);
	}

}
