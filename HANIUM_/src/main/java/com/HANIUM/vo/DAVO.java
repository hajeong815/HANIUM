package com.HANIUM.vo;

public class DAVO {
	
	private int id;
	private int cri_system_no;
	private String DA_name;
	private String DA_function;
	private int SSEP_or_not_CODE;
	private String DA_code;
	private int	DA_comm;
	private int	DA_support_function;
	private int	DA_function_type;
	private int safety_level_CODE;
	private int	digital_or_not_CODE;
	private int	cyber_attack_CODE;
	private int	comm_func_CODE;
	private int	storage_CODE;
	private int HMI_con_CODE;
	private int HMI_change_CODE;
	private int is_critical;
	private String CDA_type;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getCri_system_no() {
		return cri_system_no;
	}
	public void setCri_system_no(int cri_system_no) {
		this.cri_system_no = cri_system_no;
	}
	
	public String getDA_name() {
		return DA_name;
	}
	public void setDA_name(String DA_name) {
		this.DA_name = DA_name;
	}
	
	public String getDA_function() {
		return DA_function;
	}
	public void setDA_function(String DA_function) {
		this.DA_function = DA_function;
	}
	
	public int getSSEP_or_not_code() {
		return SSEP_or_not_CODE;
	}
	public void setSSEP_or_not_code(int SSEP_or_not_CODE) {
		this.SSEP_or_not_CODE = SSEP_or_not_CODE;
	}
	
	public String getDA_code() {
		return DA_code;
	}
	public void setDA_code(String DA_code) {
		this.DA_code = DA_code;
	}
	
	public int getDA_comm() {
		return DA_comm;
	}
	public void setDA_comm(int DA_comm) {
		this.DA_comm = DA_comm;
	}
	
	public int getDA_support_function() {
		return DA_support_function;
	}
	public void setDA_support_function(int DA_support_function) {
		this.DA_support_function = DA_support_function;
	}
	
	public int getDA_function_type() {
		return DA_function_type;
	}
	public void setDA_function_type(int DA_function_type) {
		this.DA_function_type = DA_function_type;
	}
	
	public int getSafety_level_CODE() {
		return safety_level_CODE;
	}
	public void setSafety_level_CODE(int safety_level_CODE) {
		this.safety_level_CODE = safety_level_CODE;
	}
	
	public int getDigital_or_not_CODE() {
		return digital_or_not_CODE;
	}
	public void setDigital_or_not_CODE(int digital_or_not_CODE) {
		this.digital_or_not_CODE = digital_or_not_CODE;
	}
	
	public int getCyber_attack_CODE() {
		return cyber_attack_CODE;
	}
	public void setCyber_attack_CODE(int cyber_attack_CODE) {
		this.cyber_attack_CODE = cyber_attack_CODE;
	}
	
	public int getComm_func_CODE() {
		return comm_func_CODE;
	}
	public void setComm_func_CODE(int comm_func_CODE) {
		this.comm_func_CODE = comm_func_CODE;
	}
	
	public int getStorage_CODE() {
		return storage_CODE;
	}
	public void setStorage_CODE(int storage_CODE) {
		this.storage_CODE = storage_CODE;
	}
	
	public int getHMI_con_CODE() {
		return HMI_con_CODE;
	}
	public void setHMI_con_CODE(int HMI_con_CODE) {
		this.HMI_con_CODE = HMI_con_CODE;
	}
	
	public int getHMI_change_CODE() {
		return HMI_change_CODE;
	}
	public void setHMI_change_CODE(int HMI_change_CODE) {
		this.HMI_change_CODE = HMI_change_CODE;
	}
	
	public int getIs_critical() {
		return is_critical;
	}
	public void setIs_critical(int is_critical) {
		this.is_critical = is_critical;
	}
	
	public String getCDA_type() {
		return CDA_type;
	}
	public void setCDA_type(String CDA_type) {
		this.CDA_type = CDA_type;
	}
}

//select * from DAList;

//SELECT `id`, `CRI_SYSTEM_NO`, `DA_NAME`, `DA_FUNCTION`, `SSEP_OR_NOT_CODE`, `DA_CODE`, `DA_COMM`, `DA_SUPPORT_FUNC`, `DA_FUNC_TYPE_CODE`, `SAFETY_LEVEL_CODE`, `DIGITAL_OR_NOT_CODE`, `CYBER_ATTACK_CODE`, `COMM_FUNC_CODE`, `STORAGE_CODE`, `HMI_CON_CODE`, `HMI_CHANGE_CODE`, `IS_CRITICAL`, `CDA_TYPE`    
	
//FROM DAList;
