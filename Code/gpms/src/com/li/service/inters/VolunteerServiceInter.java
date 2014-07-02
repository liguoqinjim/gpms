package com.li.service.inters;

import java.util.List;

import com.li.basic.BasicServiceInter;
import com.li.domain.Volunteer;

public interface VolunteerServiceInter extends BasicServiceInter{

	/**
	 * 得到第一轮的所有志愿
	 * @param volunteerTurn
	 * @return
	 */
	public List<Volunteer> loadAllVolunteersByTurn(int volunteerTurn);
	
	
	//是id号，不是学生学号
	public void delVolunteersByStudent(int student_id,int volunteerTurn);
	
	public void delVolunteersBySubject(int subjectId,int volunteerTurn);
	
}
