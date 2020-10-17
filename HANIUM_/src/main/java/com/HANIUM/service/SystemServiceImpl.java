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
	public SystemVO systemClassify(SystemVO systemVO) throws Exception {


		//system classify
		/*
		 * Columns: id int(11) AI PK system_CODE varchar(35) system_NAME varchar(35)
		 * system_FUNCTION text system_SSEP text system_COMM text safety_level_CODE
		 * int(11) is_CRITICAL int(11) func_type_CODE int(11)
		 */
		
		String ssep = systemVO.getSystem_SSEP();
		String comm = systemVO.getSystem_COMM();
		int safety = systemVO.getSafety_level_CODE();
		
		systemVO.setIs_CRITICAL(0);
		
		if (safety == 1) {
			systemVO.setIs_CRITICAL(1);
		}
		
		else {
			if (ssep.equals("null")) {
				systemVO.setSystem_SSEP(null);
			}
			else {
				systemVO.setIs_CRITICAL(1);
			}
			
			if (comm.equals("null")) {
				systemVO.setSystem_COMM(null);
			}
			else {
				systemVO.setIs_CRITICAL(1);
			}
		}

		

		
		return systemVO;
		
	}
	
	
}
