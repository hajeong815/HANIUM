package com.HANIUM.vo;

public class SystemVO {

	private int id;
	private int system_CODE;
	private String system_NAME;
	private String system_FUNCTION;
	private int system_SSEP;
	private int system_COMM;
	private int safety_level_CODE;
	private int is_CRITICAL;
	private int func_type_CODE;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSystem_CODE() {
		return system_CODE;
	}

	public void setSystem_CODE(int system_CODE) {
		this.system_CODE = system_CODE;
	}

	public String getSystem_NAME() {
		return system_NAME;
	}

	public void setSystem_NAME(String system_NAME) {
		this.system_NAME = system_NAME;
	}

	public String getSystem_FUNCTION() {
		return system_FUNCTION;
	}

	public void setSystem_FUNCTION(String system_FUNCTION) {
		this.system_FUNCTION = system_FUNCTION;
	}

	public int getSystem_SSEP() {
		return system_SSEP;
	}

	public void setSystem_SSEP(int system_SSEP) {
		this.system_SSEP = system_SSEP;
	}

	public int getSystem_COMM() {
		return system_COMM;
	}

	public void setSystem_COMM(int system_COMM) {
		this.system_COMM = system_COMM;
	}

	public int getSafety_level_CODE() {
		return safety_level_CODE;
	}

	public void setSafety_level_CODE(int safety_level_CODE) {
		this.safety_level_CODE = safety_level_CODE;
	}

	public int getIs_CRITICAL() {
		return is_CRITICAL;
	}

	public void setIs_CRITICAL(int is_CRITICAL) {
		this.is_CRITICAL = is_CRITICAL;
	}

	public int getFunc_type_CODE() {
		return func_type_CODE;
	}

	public void setFunc_type_CODE(int func_type_CODE) {
		this.func_type_CODE = func_type_CODE;
	}

}

//select * from SystemList;

//SELECT `id`, `SYSTEM_CODE`, `SYSTEM_NAME`, `SYSTEM_FUNCTION`, `SYSTEM_SSEP`, `SYSTEM_COMM`, `SAFETY_LEVEL_CODE`, `IS_CRITICAL`, `FUNC_TYPE_CODE`

//FROM SystemList;