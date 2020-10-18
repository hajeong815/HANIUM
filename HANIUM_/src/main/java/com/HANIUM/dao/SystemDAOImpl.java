package com.HANIUM.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.vo.SystemVO;

@Repository
public class SystemDAOImpl implements SystemDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<SystemVO> list() throws Exception {
	
		return sqlSession.selectList("systemMapper.list");

	}

	@Override
	public int insertSystem(SystemVO systemVO) throws Exception {
		return sqlSession.insert("systemMapper.systemInsert", systemVO);
		
	}

	@Override
	public SystemVO getOneBySystem_CODE(String system_CODE) throws Exception {
		
		System.out.println("===DAOIMPL==");
		System.out.println(system_CODE);
		
		return sqlSession.selectOne("systemMapper.getOne", system_CODE);
	}

}
