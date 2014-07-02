package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.AttachmentType;

public interface AttachmentTypeServiceInter extends BasicServiceInter{
	public List<AttachmentType> loadAttachmentTypes();
}
