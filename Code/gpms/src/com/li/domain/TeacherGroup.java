package com.li.domain;

/**
 * TeacherGroup entity. @author MyEclipse Persistence Tools
 */

public class TeacherGroup implements java.io.Serializable {

	// Fields

	private Integer id;
	private Teacher teacher;
	private Integer teacherGroupId;
	private Integer teacherGroupLeader;

	// Constructors

	/** default constructor */
	public TeacherGroup() {
	}

	/** full constructor */
	public TeacherGroup(Teacher teacher, Integer teacherGroupId,
			Integer teacherGroupLeader) {
		this.teacher = teacher;
		this.teacherGroupId = teacherGroupId;
		this.teacherGroupLeader = teacherGroupLeader;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Integer getTeacherGroupId() {
		return this.teacherGroupId;
	}

	public void setTeacherGroupId(Integer teacherGroupId) {
		this.teacherGroupId = teacherGroupId;
	}

	public Integer getTeacherGroupLeader() {
		return this.teacherGroupLeader;
	}

	public void setTeacherGroupLeader(Integer teacherGroupLeader) {
		this.teacherGroupLeader = teacherGroupLeader;
	}

}