package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.common.Search;
import com.HANIUM.dao.InspectionDAO;
import com.HANIUM.vo.InspectionResultVO;
import com.HANIUM.vo.InspectionVO;
import com.HANIUM.vo.StandardCodeVO;
import com.HANIUM.vo.StandardInsVO;
import com.HANIUM.vo.StandardsVO;

@Service
public class InspectionServiceImpl implements InspectionService {
	
	@Inject
	private InspectionDAO inspectionDao;

	@Override
	public List<InspectionVO> getInspectionList() {

		return inspectionDao.getInspectionList();
	}

	@Override
	public void insertInspection(HashMap<String, Object> paramMap) {
		inspectionDao.insertInspection(paramMap);
	}

	@Override
	public List<StandardsVO> getInsGroupFromStandard() {
		return inspectionDao.getInsGroupFromStandard();
	}

	@Override
	public List<StandardInsVO> getInsGroupListFromStandard(int upper_type_no) {
		return inspectionDao.getInsGroupListFromStandard(upper_type_no);
	}

	@Override
	public List<InspectionResultVO> getInspectionResultList(Search search) {
		return inspectionDao.getInspectionResultList(search);
	}

}
