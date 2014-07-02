package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.Notice;

public interface NoticeServiceInter extends BasicServiceInter{
	public List<Notice> loadNoticesByGrade(int noticeGrade);
}
