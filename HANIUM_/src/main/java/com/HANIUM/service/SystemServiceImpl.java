package com.HANIUM.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.SystemDAO;
import com.HANIUM.vo.SystemVO;

@Service
public class SystemServiceImpl implements SystemService {

	@Inject
	private SystemDAO dao;

	@Override
	public List<SystemVO> list() throws Exception {

		return dao.list();
	}
}
