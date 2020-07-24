package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.vo.DAVO;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.NonconfirmVO;

@Repository
public class securityEvaDAOImpl implements securityEvaDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<DAVO> list() throws Exception {
	
		return sqlSession.selectList("securityMapper.list");

	}

	@Override
	public void item(HashMap<String, Object> paramMap) {

		sqlSession.insert("securityMapper.list", paramMap);
		}

	@Override
	public List<DAVO> getSecurityEva() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("securityMapper.getSecurityEva");

	}
	
	

	@Override
	public List<InspectionResultVO> getInsAlterList(String Cda_mapping) {
		return sqlSession.selectList("securityMapper.getInsAlterList", Cda_mapping);
	}

	@Override
	public void insertEva(HashMap<String, Object> paramMap) {
		sqlSession.insert("securityMapper.insertEva", paramMap);
	}

	@Override
	public void insertNoncon(List<NonconfirmVO> paramMap) {
		sqlSession.insert("securityMapper.insertNoncon", paramMap);
	}





}
