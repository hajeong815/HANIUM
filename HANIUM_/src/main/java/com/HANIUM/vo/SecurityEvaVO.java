package com.HANIUM.vo;

public class SecurityEvaVO {
	
	private int id;
	private String CDA_CODE;
	private int EVA_DONE_YN = 1;
	private String CONTENT;
	private String COMMENT;
	private int PERIOD;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCDA_CODE() {
		return CDA_CODE;
	}
	public void setCDA_CODE(String CDA_CODE) {
		this.CDA_CODE = CDA_CODE;
	}
	public int getEVA_DONE_YN() {
		return EVA_DONE_YN;
	}
	public void setEVA_DONE_YN(int EVA_DONE_YN) {
		this.EVA_DONE_YN = EVA_DONE_YN;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String CONTENT) {
		this.CONTENT = CONTENT;
	}
	public String getCOMMENT() {
		return COMMENT;
	}
	public void setCOMMENT(String COMMENT) {
		this.COMMENT = COMMENT;
	}
	public int getPERIOD() {
		return PERIOD;
	}
	public void setPERIOD(int PERIOD) {
		this.PERIOD = PERIOD;
	}
	
	

}

/*
 * id int(11) AI PK CDA_CODE varchar(35) EVA_DONE_YN int(1) CONTENT text COMMENT
 * text PERIOD int(11)
 */
