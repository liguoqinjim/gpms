package com.li.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * AttachmentType entity. @author MyEclipse Persistence Tools
 */

public class AttachmentType implements java.io.Serializable {

	// Fields

	private Integer attachmentTypeId;
	private String attachmentTypeName;
	private Set attachments = new HashSet(0);

	// Constructors

	/** default constructor */
	public AttachmentType() {
	}

	/** minimal constructor */
	public AttachmentType(String attachmentTypeName) {
		this.attachmentTypeName = attachmentTypeName;
	}

	/** full constructor */
	public AttachmentType(String attachmentTypeName, Set attachments) {
		this.attachmentTypeName = attachmentTypeName;
		this.attachments = attachments;
	}

	// Property accessors

	public Integer getAttachmentTypeId() {
		return this.attachmentTypeId;
	}

	public void setAttachmentTypeId(Integer attachmentTypeId) {
		this.attachmentTypeId = attachmentTypeId;
	}

	public String getAttachmentTypeName() {
		return this.attachmentTypeName;
	}

	public void setAttachmentTypeName(String attachmentTypeName) {
		this.attachmentTypeName = attachmentTypeName;
	}

	public Set getAttachments() {
		return this.attachments;
	}

	public void setAttachments(Set attachments) {
		this.attachments = attachments;
	}

}