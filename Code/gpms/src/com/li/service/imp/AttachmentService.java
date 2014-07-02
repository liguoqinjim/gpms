package com.li.service.imp;

import com.li.basic.BasicService;
import com.li.domain.Attachment;
import com.li.domain.AttachmentType;
import com.li.service.inters.AttachmentServiceInter;

public class AttachmentService extends BasicService implements AttachmentServiceInter{

	@Override
	public void addAttachment(int attachmentTypeId, int subjectId, String path) {
		// TODO Auto-generated method stub
		AttachmentType attachmentType = (AttachmentType) findById(AttachmentType.class, attachmentTypeId);
		
		Attachment attachment = new Attachment(attachmentType, subjectId, path);
		
		add(attachment);
	}

}
