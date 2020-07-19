package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.vo.SystemVO;

@Repository
public class securityEvaDAOImpl implements securityEvaDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<SystemVO> list() throws Exception {
	
		return sqlSession.selectList("securityMapper.list");

	}

	@Override
	public void item(HashMap<String, Object> paramMap) {

		sqlSession.insert("securityMapper.list", paramMap);
		}

}
