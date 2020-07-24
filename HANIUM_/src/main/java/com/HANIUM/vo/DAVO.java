package com.HANIUM.vo;

public class DAVO {
	
	private int id;
	private int CRI_SYSTEM_NO;
	private String DA_CODE;
	private String DA_NAME;
	private String DA_FUNCTION;
	private int DA_COMM;
	private int DA_SUPPORT_FUNC;
	private int DA_FUNC_TYPE_CODE;
	private int SAFETY_LEVEL_CODE;
	private int DIGITAL_OR_NOT_CODE;
	private int CYBER_ATTACK_CODE;
	private int COMM_FUNC_CODE;
	private int STORAGE_CODE;
	private int HMI_CON_CODE;
	private int HMI_CHANGE_CODE;
	private int IS_CRITICAL;
	private String CDA_TYPE;
	
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getCRI_SYSTEM_NO() {
		return CRI_SYSTEM_NO;
	}
	
	public void setCRI_SYSTEM_NO(int CRI_SYSTEM_NO) {
		this.CRI_SYSTEM_NO = CRI_SYSTEM_NO;
	}
	
	
	
	
	public int getCOMM_FUNC_CODE() {
		return COMM_FUNC_CODE;
	}

	public void setCOMM_FUNC_CODE(int COMM_FUNC_CODE) {
		this.COMM_FUNC_CODE = COMM_FUNC_CODE;
	}
	
	

	public String getDA_CODE() {
		return DA_CODE;
	}

	public void setDA_CODE(String DA_CODE) {
		this.DA_CODE = DA_CODE;
	}

	public String getDA_NAME() {
		return DA_NAME;
	}

	public void setDA_NAME(String DA_NAME) {
		this.DA_NAME = DA_NAME;
	}

	public String getDA_FUNCTION() {
		return DA_FUNCTION;
	}

	public void setDA_FUNCTION(String DA_FUNCTION) {
		this.DA_FUNCTION = DA_FUNCTION;
	}

	public int getDA_COMM() {
		return DA_COMM;
	}

	public void setDA_COMM(int DA_COMM) {
		this.DA_COMM = DA_COMM;
	}

	public int getDA_SUPPORT_FUNC() {
		return DA_SUPPORT_FUNC;
	}

	public void setDA_SUPPORT_FUNC(int DA_SUPPORT_FUNC) {
		this.DA_SUPPORT_FUNC = DA_SUPPORT_FUNC;
	}

	public int getDA_FUNC_TYPE_CODE() {
		return DA_FUNC_TYPE_CODE;
	}

	public void setDA_FUNC_TYPE_CODE(int DA_FUNC_TYPE_CODE) {
		this.DA_FUNC_TYPE_CODE = DA_FUNC_TYPE_CODE;
	}

	public int getSAFETY_LEVEL_CODE() {
		return SAFETY_LEVEL_CODE;
	}

	public void setSAFETY_LEVEL_CODE(int SAFETY_LEVEL_CODE) {
		this.SAFETY_LEVEL_CODE = SAFETY_LEVEL_CODE;
	}

	public int getDIGITAL_OR_NOT_CODE() {
		return DIGITAL_OR_NOT_CODE;
	}

	public void setDIGITAL_OR_NOT_CODE(int DIGITAL_OR_NOT_CODE) {
		this.DIGITAL_OR_NOT_CODE = DIGITAL_OR_NOT_CODE;
	}

	public int getCYBER_ATTACK_CODE() {
		return CYBER_ATTACK_CODE;
	}

	public void setCYBER_ATTACK_CODE(int CYBER_ATTACK_CODE) {
		this.CYBER_ATTACK_CODE = CYBER_ATTACK_CODE;
	}

	public int getSTORAGE_CODE() {
		return STORAGE_CODE;
	}

	public void setSTORAGE_CODE(int STORAGE_CODE) {
		this.STORAGE_CODE = STORAGE_CODE;
	}

	public int getHMI_CON_CODE() {
		return HMI_CON_CODE;
	}

	public void setHMI_CON_CODE(int HMI_CON_CODE) {
		this.HMI_CON_CODE = HMI_CON_CODE;
	}

	public int getHMI_CHANGE_CODE() {
		return HMI_CHANGE_CODE;
	}

	public void setHMI_CHANGE_CODE(int HMI_CHANGE_CODE) {
		this.HMI_CHANGE_CODE = HMI_CHANGE_CODE;
	}

	public int getIS_CRITICAL() {
		return IS_CRITICAL;
	}

	public void setIS_CRITICAL(int IS_CRITICAL) {
		this.IS_CRITICAL = IS_CRITICAL;
	}

	public String getCDA_TYPE() {
		return CDA_TYPE;
	}
	public void setCDA_TYPE(String CDA_TYPE) {
		this.CDA_TYPE = CDA_TYPE;
	}
	

}


/*
 * CRI_SYSTEM_NO int(11) DA_CODE varchar(35) DA_NAME varchar(7) DA_FUNCTION text
 * DA_COMM int(11) DA_SUPPORT_FUNC int(11) DA_FUNC_TYPE_CODE int(11)
 * SAFETY_LEVEL_CODE int(11) DIGITAL_OR_NOT_CODE int(11) CYBER_ATTACK_CODE
 * int(11) COMM_FUNC_CODE int(11) STORAGE_CODE int(11) HMI_CON_CODE int(11)
 * HMI_CHANGE_CODE int(11) IS_CRITICAL int(11) CDA_TYPE
 */