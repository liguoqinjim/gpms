/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.li.struts.action.dean;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.li.domain.Volunteer;
import com.li.service.inters.SubjectServiceInter;
import com.li.service.inters.VolunteerServiceInter;
import com.li.struts.form.dean.ConfirmSubjectForm;

/**
 * MyEclipse Struts Creation date: 05-28-2014
 * 
 * XDoclet definition:
 * 
 * @struts.action
 */
public class ConfirmSubjectAction extends Action {
	@Resource
	private VolunteerServiceInter volunteerServiceInter;
	@Resource
	private SubjectServiceInter subjectServiceInter;

	public void setVolunteerServiceInter(VolunteerServiceInter volunteerServiceInter) {
		this.volunteerServiceInter = volunteerServiceInter;
	}

	public void setSubjectServiceInter(SubjectServiceInter subjectServiceInter) {
		this.subjectServiceInter = subjectServiceInter;
	}

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		ConfirmSubjectForm confirmSubjectForm = (ConfirmSubjectForm) form;
		int volunteerTurn = Integer.parseInt(confirmSubjectForm.getVolunteerTurn());

		List<Volunteer> volunteers = volunteerServiceInter.loadAllVolunteersByTurn(volunteerTurn);
		int lastSubjectId = subjectServiceInter.getlastSubjectId();

		for (int i = 1; i <= lastSubjectId; i++) {
			List<Volunteer> sameSubjectVolunteers = new ArrayList<Volunteer>();
			List<Integer> idsInVolunteers = new ArrayList<Integer>();

			// 把一个subjectId都整理出来
			for (int k = 0; k < volunteers.size(); k++) {
				int subjectId = volunteers.get(k).getSubject().getSubjectId();
				if (subjectId == i) {
					sameSubjectVolunteers.add(volunteers.get(k));
					idsInVolunteers.add(k);
				}
			}
			// 把一个subjectId都整理出来
			if (sameSubjectVolunteers.size() != 0) {
				if (sameSubjectVolunteers.size() == 1) {// 只有一个学生
					Volunteer volunteer = sameSubjectVolunteers.get(0);
					subjectServiceInter.setStudent(volunteer.getSubject(), volunteer.getStudent());
					int student_id= volunteer.getStudent().getId();
					int subjectId = volunteer.getSubject().getSubjectId();
					volunteerServiceInter.delVolunteersByStudent(student_id, volunteerTurn);
					volunteerServiceInter.delVolunteersBySubject(subjectId, volunteerTurn);
//					delVolunteersByStudent(volunteers, student_id);
//					delVolunteersBySubject(volunteers, subjectId);
					volunteers = volunteerServiceInter.loadAllVolunteersByTurn(volunteerTurn);
				} else {
					long time = 0;
					int id = 0;
					for(int s = 0;s < sameSubjectVolunteers.size();s++){
						if(time == 0 ){
							time = sameSubjectVolunteers.get(s).getVolunteerTime();
							id = s;
						}
						else{
							long volunteerTime = sameSubjectVolunteers.get(s).getVolunteerTime();
							if(volunteerTime < time){
								time = volunteerTime;
								id = s;
							}
						}
					}
					Volunteer volunteer = sameSubjectVolunteers.get(id);
					subjectServiceInter.setStudent(volunteer.getSubject(), volunteer.getStudent());
					int student_id= volunteer.getStudent().getId();
					int subjectId = volunteer.getSubject().getSubjectId();
					volunteerServiceInter.delVolunteersByStudent(student_id, volunteerTurn);
					volunteerServiceInter.delVolunteersBySubject(subjectId, volunteerTurn);
//					delVolunteersByStudent(volunteers, student_id);
//					delVolunteersBySubject(volunteers, subjectId);
					
					volunteers = volunteerServiceInter.loadAllVolunteersByTurn(volunteerTurn);
				}
			}

		}

		return mapping.findForward("deanMain");
	}

	public static void delVolunteersByStudent(List<Volunteer> volunteers, int student_id) {
		for (int i = 0; i < volunteers.size(); i++) {
			int studentIdInVolunteers = volunteers.get(i).getStudent().getId();
			if (studentIdInVolunteers == student_id) {
				volunteers.remove(i);
			}
		}
	}

	public static void delVolunteersBySubject(List<Volunteer> volunteers, int subjectId) {
		for (int i = 0; i < volunteers.size(); i++) {
			int subjectIdInVolunteers = volunteers.get(i).getSubject().getSubjectId();
			if (subjectIdInVolunteers == subjectId) {
				volunteers.remove(i);
			}
		}

	}
}