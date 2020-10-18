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
	public void insertDA(HashMap<String, Object> paramMap) {
		sqlSession.insert("DAMapper.insertDA", paramMap);
	}

	 

}
