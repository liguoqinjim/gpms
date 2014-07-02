package com.li.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.li.domain.Student;
import com.li.service.inters.StudentServiceInter;

public class StudentMain {
	public static void main(String args[]){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentServiceInter studentServiceInter = (StudentServiceInter) ac.getBean("studentService");
		Student student = (Student) studentServiceInter.findById(Student.class, 1);
		student.setStudentTel("15000000001");
		student.setStudentEmail("10000@qq.com");
		studentServiceInter.update(student);
	}

	private static void resetPwd() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentServiceInter studentServiceInter = (StudentServiceInter) ac.getBean("studentService");
		studentServiceInter.resetPwd(1);
	}
}
