package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.vo.DAVO;

@Repository
public class DADAOImpl implements DADAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<DAVO> list() throws Exception {
	
		return sqlSession.selectList("DAMapper.list");

	}
	
	@Override
	public void DAInsert(DAVO vo) {
		sqlSession.insert("DAMapper.insertDA", vo);

	}

	@Override
	public void insertDA(String DA_name, DAVO vo) {
		// TODO Auto-generated method stub
		
	}

	 

}
