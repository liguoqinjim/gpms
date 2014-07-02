package com.li.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.li.domain.Teacher;
import com.li.service.inters.TeacherServiceInter;

public class TeacherMain {
	public static void main(String args[]){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		TeacherServiceInter teacherServiceInter = (TeacherServiceInter) ac.getBean("teacherService");
		teacherServiceInter.resetPwd(1);
	}

	private static void login() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		TeacherServiceInter teacherServiceInter = (TeacherServiceInter) ac.getBean("teacherService");
		Teacher teacher = teacherServiceInter.login("2011000001", "123456");
		if(teacher != null){
			System.out.println(teacher.toString());
		}
	}
}
