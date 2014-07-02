package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.AttachmentType;
import com.li.service.inters.AttachmentTypeServiceInter;

public class AttachmentTypeService extends BasicService implements AttachmentTypeServiceInter{

	@Override
	public List<AttachmentType> loadAttachmentTypes() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from AttachmentType ");
		
		List<AttachmentType> attachmentTypes = executeQuery(hql.toString(), null);
		
		
		return attachmentTypes;
	}

	
}
