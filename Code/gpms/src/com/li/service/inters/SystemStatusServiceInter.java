package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.SystemStatus;

public interface SystemStatusServiceInter extends BasicServiceInter{

	/**
	 * 得到所有的系统状态
	 * @return
	 */
	public List<SystemStatus> loadSystemStatus();
	
	/**
	 * 更新系统状态
	 * @param systemStatusId
	 * @param systemStatus
	 */
	public void changeSystemStatus(int systemStatusId,int systemStatus);
	
	
	public SystemStatus loadSystemStatusById(int systemStatusId);
}
