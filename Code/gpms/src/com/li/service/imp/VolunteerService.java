package com.li.service.imp;

import java.util.Iterator;
import java.util.List;

import com.li.basic.BasicService;
import com.li.domain.Volunteer;
import com.li.service.inters.VolunteerServiceInter;

public class VolunteerService extends BasicService implements VolunteerServiceInter{

	@Override
	public List<Volunteer> loadAllVolunteersByTurn(int volunteerTurn) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Volunteer volunteer ");
		hql.append("where volunteer.volunteerTurn = ?");
		
		Object[] parameters = {volunteerTurn};
		
		List<Volunteer> volunteers = executeQuery(hql.toString(), parameters);
		
		return volunteers;
	}

	@Override
	public void delVolunteersByStudent(int student_id, int volunteerTurn) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Volunteer volunteer ");
		hql.append("where volunteer.student.id = ?  ");
		hql.append("and volunteer.volunteerTurn = ?");
//		System.out.println("VolunteerService::delVolunteerByStudent::student_id=" + student_id);
//		System.out.println("VolunteerService::delVolunteerByStudent::volunteerTurn=" + volunteerTurn);
		Object[] parameters = {student_id,volunteerTurn};
		
		List<Volunteer> volunteers = executeQuery(hql.toString(), parameters);
		
//		System.out.println("VolunteerService::delVolunteersByStudent::volunteers.size=" + volunteers.size());
		
		for(Volunteer volunteer : volunteers){
			delById(Volunteer.class, volunteer.getVolunteerId());
		}
	}

	@Override
	public void delVolunteersBySubject(int subjectId, int volunteerTurn) {
		// TODO Auto-generated method stub
		StringBuffer hql = new StringBuffer();
		hql.append("from Volunteer volunteer ");
		hql.append("where volunteer.subject.subjectId = ? ");
		hql.append("and volunteer.volunteerTurn = ?");
		
		Object[] parameters = {subjectId,volunteerTurn};
		
		List<Volunteer> volunteers = executeQuery(hql.toString(), parameters);
		
		for(Volunteer volunteer : volunteers){
			delById(Volunteer.class, volunteer.getVolunteerId());
		}
		
	}

}
