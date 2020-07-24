package com.HANIUM.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.HANIUM.common.ReportSearch;
import com.HANIUM.vo.ReportVO;
import com.HANIUM.vo.SystemVO;

@Repository
public class ReportDAOImpl implements ReportDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<ReportVO> list() throws Exception {
	
		return sqlSession.selectList("reportMapper.list");
	}
	
	@Override

	public List<ReportVO> getReportList(ReportSearch reportSearch) throws Exception {

		return sqlSession.selectList("reportMapper.getReportList", reportSearch);
	}

	
	@Override
	public ReportVO read(int bno) throws Exception {
		
		return sqlSession.selectOne("reportMapper.read", bno);
	}
	

	/*@Override
	public void update(ReportVO reportVO) throws Exception {
		
		sqlSession.update("reportMapper.update", reportVO);
	}*/
	@Override
	public void update(ReportVO reportVO) {
	    sqlSession.update("reportMapper.update", reportVO);
	}
	
	@Override
	public void delete(int bno) throws Exception {
		
		sqlSession.delete("reportMapper.delete", bno);
	}

	@Override
	public List<ReportVO> getListModal(String cda_name) {
		return sqlSession.selectOne("reportMapper.listmodal", cda_name);
	}


}
