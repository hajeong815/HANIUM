package com.HANIUM.common;

public class ReportSearch {
	private String cda_code;
	private String cda_name;
	private String period;
	private String content;
	private String measure_content;
	
	public ReportSearch() {}

	public String getCda_code() {
		return cda_code;
	}

	public void setCda_code(String cda_code) {
		this.cda_code = cda_code;
	}

	public String getCda_name() {
		return cda_name;
	}

	public void setCda_name(String cda_name) {
		this.cda_name = cda_name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMeasure_content() {
		return measure_content;
	}

	public void setMeasure_content(String measure_content) {
		this.measure_content = measure_content;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}
	
	
}
