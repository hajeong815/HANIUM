package com.HANIUM.vo;

public class InspectionResultVO {
	private int id;
	private String cda_mapping;
	private String inspect_group;
	private String inspect_group_list;
	private String alter_measure;
	private String content;
	
	public InspectionResultVO() {}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCda_mapping() {
		return cda_mapping;
	}
	public void setCda_mapping(String cda_mapping) {
		this.cda_mapping = cda_mapping;
	}
	public String getInspect_group() {
		return inspect_group;
	}
	public void setInspect_group(String inspect_group) {
		this.inspect_group = inspect_group;
	}
	public String getInspect_group_list() {
		return inspect_group_list;
	}
	public void setInspect_group_list(String inspect_group_list) {
		this.inspect_group_list = inspect_group_list;
	}
	public String getAlter_measure() {
		return alter_measure;
	}
	public void setAlter_measure(String alter_measure) {
		this.alter_measure = alter_measure;
	}
}
