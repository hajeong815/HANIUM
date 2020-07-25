package com.HANIUM.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.vo.SystemVO;

@Repository
public class SystemDAOImpl implements SystemDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<SystemVO> list() throws Exception {

		return sqlSession.selectList("systemMapper.list");

	}

}
