package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.common.ReportSearch;
import com.HANIUM.vo.NonconfirmResultVO;
import com.HANIUM.vo.NonconfirmVO;
import com.HANIUM.vo.ReportVO;
import com.HANIUM.vo.SystemVO;

@Repository
public class ReportDAOImpl implements ReportDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<NonconfirmVO> list() throws Exception {
	
		return sqlSession.selectList("reportMapper.list");
	}
	
	@Override

	public List<NonconfirmResultVO> getReportList(ReportSearch reportSearch) throws Exception {

		return sqlSession.selectList("reportMapper.getReportList", reportSearch);
	}

	
	@Override
	public NonconfirmResultVO read(int id) throws Exception {
		
		return sqlSession.selectOne("reportMapper.read", id);
	}
	

	/*@Override
	public void update(ReportVO reportVO) throws Exception {
		
		sqlSession.update("reportMapper.update", reportVO);
	}*/
	@Override
	public void update(NonconfirmResultVO nonconfirmResultVO) {
	    sqlSession.update("reportMapper.update", nonconfirmResultVO);
	}
	
	@Override
	public void delete(int id) throws Exception {
		
		sqlSession.delete("reportMapper.delete", id);
	}


}
