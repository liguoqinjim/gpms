package com.li.domain;

/**
 * SystemStatus entity. @author MyEclipse Persistence Tools
 */

public class SystemStatus implements java.io.Serializable {

	// Fields

	private Integer systemStatusId;
	private String systemStatusName;
	private Integer systemStatus;

	// Constructors

	/** default constructor */
	public SystemStatus() {
	}

	/** full constructor */
	public SystemStatus(String systemStatusName, Integer systemStatus) {
		this.systemStatusName = systemStatusName;
		this.systemStatus = systemStatus;
	}

	// Property accessors

	public Integer getSystemStatusId() {
		return this.systemStatusId;
	}

	public void setSystemStatusId(Integer systemStatusId) {
		this.systemStatusId = systemStatusId;
	}

	public String getSystemStatusName() {
		return this.systemStatusName;
	}

	public void setSystemStatusName(String systemStatusName) {
		this.systemStatusName = systemStatusName;
	}

	public Integer getSystemStatus() {
		return this.systemStatus;
	}

	public void setSystemStatus(Integer systemStatus) {
		this.systemStatus = systemStatus;
	}

}