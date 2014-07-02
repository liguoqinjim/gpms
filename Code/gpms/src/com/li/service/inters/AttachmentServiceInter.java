package com.li.service.inters;

import com.li.basic.BasicServiceInter;

public interface AttachmentServiceInter extends BasicServiceInter{
	public void addAttachment(int attachmentTypeId,int subjectId,String path);
}
