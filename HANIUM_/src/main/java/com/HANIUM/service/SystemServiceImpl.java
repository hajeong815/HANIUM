package com.HANIUM.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.SystemDAO;
import com.HANIUM.vo.SystemVO;

@Service
public class SystemServiceImpl implements SystemService{
	@Inject
	private SystemDAO dao;
	
	@Override
	public List<SystemVO> list() throws Exception {

		return dao.list();
	}
	
	@Override
	public void systemInsert(SystemVO systemVO) throws Exception {
		// TODO Auto-generated method stub
		dao.insertSystem(systemVO);
	}

	@Override
	public SystemVO getOneBySystem_CODE(String system_CODE) throws Exception {
		return dao.getOneBySystem_CODE(system_CODE);
	}
}
