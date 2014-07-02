package com.li.domain;

/**
 * Attachment entity. @author MyEclipse Persistence Tools
 */

public class Attachment implements java.io.Serializable {

	// Fields

	private Integer attachmentId;
	private AttachmentType attachmentType;
	private Integer attachmentSubjectId;
	private String attachmentPath;

	// Constructors

	/** default constructor */
	public Attachment() {
	}

	/** full constructor */
	public Attachment(AttachmentType attachmentType,
			Integer attachmentSubjectId, String attachmentPath) {
		this.attachmentType = attachmentType;
		this.attachmentSubjectId = attachmentSubjectId;
		this.attachmentPath = attachmentPath;
	}

	// Property accessors

	public Integer getAttachmentId() {
		return this.attachmentId;
	}

	public void setAttachmentId(Integer attachmentId) {
		this.attachmentId = attachmentId;
	}

	public AttachmentType getAttachmentType() {
		return this.attachmentType;
	}

	public void setAttachmentType(AttachmentType attachmentType) {
		this.attachmentType = attachmentType;
	}

	public Integer getAttachmentSubjectId() {
		return this.attachmentSubjectId;
	}

	public void setAttachmentSubjectId(Integer attachmentSubjectId) {
		this.attachmentSubjectId = attachmentSubjectId;
	}

	public String getAttachmentPath() {
		return this.attachmentPath;
	}

	public void setAttachmentPath(String attachmentPath) {
		this.attachmentPath = attachmentPath;
	}

}