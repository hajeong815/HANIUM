package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.common.Search;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.InspectionVO;
import com.HANIUM.vo.StandardCodeVO;
import com.HANIUM.vo.StandardInsVO;
import com.HANIUM.vo.StandardsVO;

@Repository
public class InspectionDAOImpl implements InspectionDAO{
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<InspectionVO> getInspectionList(){
		return sqlSession.selectList("inspectionMapper.getInspectionList");
	}

	@Override
	public void insertInspection(HashMap<String, Object> paramMap) {
		sqlSession.insert("inspectionMapper.insertInspection", paramMap);
	}

	@Override
	public List<StandardsVO> getInsGroupFromStandard() {
		return sqlSession.selectList("inspectionMapper.getInsGroupFromStandard");
	}

	@Override
	public List<StandardInsVO> getInsGroupListFromStandard(int upper_type_no) {
		return sqlSession.selectList("inspectionMapper.getInsGroupListFromStandard", upper_type_no);
	}

	@Override
	public List<InspectionResultVO> getInspectionResultList(Search search) {
		return sqlSession.selectList("inspectionMapper.getInspectionResultList", search);
	}

}
