package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.vo.InspectionVO;

@Repository
public class InspectionDAOImpl implements InspectionDAO{
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<InspectionVO> getInspectionList(){
		return sqlSession.selectList("inspectionMapper.getInspectionList");
	}

	@Override
	public void insertInspection(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		
	}

}
