package com.li.domain;

/**
 * Volunteer entity. @author MyEclipse Persistence Tools
 */

public class Volunteer implements java.io.Serializable {

	// Fields

	private Integer volunteerId;
	private Student student;
	private Subject subject;
	private Integer volunteerPriority;
	private Long volunteerTime;
	private Integer volunteerTurn;

	// Constructors

	/** default constructor */
	public Volunteer() {
	}

	/** full constructor */
	public Volunteer(Student student, Subject subject,
			Integer volunteerPriority, Long volunteerTime,
			Integer volunteerTurn) {
		this.student = student;
		this.subject = subject;
		this.volunteerPriority = volunteerPriority;
		this.volunteerTime = volunteerTime;
		this.volunteerTurn = volunteerTurn;
	}

	// Property accessors

	public Integer getVolunteerId() {
		return this.volunteerId;
	}

	public void setVolunteerId(Integer volunteerId) {
		this.volunteerId = volunteerId;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Subject getSubject() {
		return this.subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Integer getVolunteerPriority() {
		return this.volunteerPriority;
	}

	public void setVolunteerPriority(Integer volunteerPriority) {
		this.volunteerPriority = volunteerPriority;
	}

	public Long getVolunteerTime() {
		return this.volunteerTime;
	}

	public void setVolunteerTime(Long volunteerTime) {
		this.volunteerTime = volunteerTime;
	}

	public Integer getVolunteerTurn() {
		return this.volunteerTurn;
	}

	public void setVolunteerTurn(Integer volunteerTurn) {
		this.volunteerTurn = volunteerTurn;
	}

}