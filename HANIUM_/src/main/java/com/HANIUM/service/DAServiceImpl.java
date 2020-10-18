package com.HANIUM.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.HANIUM.dao.DADAO;
import com.HANIUM.vo.DAVO;

@Service
public class DAServiceImpl implements DAService{

	
	@Inject
	private DADAO dao;
	
	@Override
	public List<DAVO> list() throws Exception {

		return dao.list();
	}
	
	@Override
	public void insertDA(HashMap<String, Object> paramMap) {
		dao.insertDA(paramMap);
	}

	@Override
	public String classifyCDAType(HashMap<String, Object> paramMap) {
		String STORAGE_CODE = paramMap.get("STORAGE_CODE").toString();
		String COMM_FUNC_CODE = paramMap.get("COMM_FUNC_CODE").toString();
		String HMI_CON_CODE = paramMap.get("HMI_CON_CODE").toString();
		String DIGITAL_OR_NOT_CODE = paramMap.get("DIGITAL_OR_NOT_CODE").toString();
		String HMI_CHANGE_CODE = "";
		if (paramMap.get("HMI_CHANGE_CODE") != null) {
			HMI_CHANGE_CODE = paramMap.get("HMI_CHANGE_CODE").toString();
		}

		if (DIGITAL_OR_NOT_CODE == "1") {
			return "PC/Server";
		} else if (STORAGE_CODE.equals("USB") || STORAGE_CODE.equals("메모리카드")) {
			if (COMM_FUNC_CODE.equals("Ethernet")) {
				return "TFHF";
			} else if (COMM_FUNC_CODE.equals("RS-232") || COMM_FUNC_CODE.equals("RS-422") || COMM_FUNC_CODE.equals("RS-485")) {
				if (HMI_CON_CODE.equals("Local HMI")) {
					if (HMI_CHANGE_CODE.equals("Control Logic")) {
						return "TFMF";
					} else {
						return "TFLF";
					}
				} else if (HMI_CON_CODE.equals("Integral HMI")) {
					if (HMI_CHANGE_CODE.equals("Firmware")) {
						return "FFHF";
					} else if (HMI_CON_CODE.equals("운전변수")) {
						return "FFMF";
					}
				}
			}
		} 
		return "FFLF";
	}
}
