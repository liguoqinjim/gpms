package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.SubjectType;

public interface SubjectTypeServiceInter extends BasicServiceInter{

	public List<SubjectType> loadSubjectTypes();
}
