package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.Notice;
import com.li.service.inters.NoticeServiceInter;

public class NoticeService extends BasicService implements NoticeServiceInter{

	@Override
	public List<Notice> loadNoticesByGrade(int noticeGrade) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Notice notice ");
		hql.append("where notice.noticeGrade = ?");
		
		Object[] parameters = {noticeGrade};

		List<Notice> notices = executeQuery(hql.toString(), parameters);
		
		return notices;
	}

}
