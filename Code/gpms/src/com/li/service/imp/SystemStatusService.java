package com.li.service.imp;

import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.SystemStatus;
import com.li.service.inters.SystemStatusServiceInter;

public class SystemStatusService extends BasicService implements SystemStatusServiceInter{

	@Override
	public List<SystemStatus> loadSystemStatus() {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from SystemStatus");
		
		List<SystemStatus> systemStatuses = executeQuery(hql.toString(), null);
		
		return systemStatuses;
	}

	@Override
	public void changeSystemStatus(int systemStatusId, int systemStatus) {
		// TODO Auto-generated method stub
		SystemStatus systemStatus2 = (SystemStatus) findById(SystemStatus.class, systemStatusId);
		systemStatus2.setSystemStatus(systemStatus);
		
		this.update(systemStatus2);
	}

	@Override
	public SystemStatus loadSystemStatusById(int systemStatusId) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from SystemStatus systemStatus ");
		hql.append("where systemStatus.systemStatusId = ?");
		
		Object[] parameters = {systemStatusId};
		
		SystemStatus systemStatus = (SystemStatus) uniqueQuery(hql.toString(), parameters);
		
		return systemStatus;
	}

}
