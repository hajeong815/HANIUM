package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.InspectionDAO;
import com.HANIUM.vo.InspectionVO;

@Service
public class InspectionServiceImpl implements InspectionService {
	
	@Inject
	private InspectionDAO inspectionDao;

	@Override
	public List<InspectionVO> getInspectionList() {

		return inspectionDao.getInspectionList();
	}

	@Override
	public void insertInspection(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		
	}

}
