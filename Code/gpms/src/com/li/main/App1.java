package com.li.main;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.li.domain.Clazz;
import com.li.domain.Dept;
import com.li.domain.Major;
import com.li.domain.Student;
import com.li.domain.SystemStatus;
import com.li.domain.Teacher;
import com.li.service.inters.ClazzServiceInter;
import com.li.service.inters.DeptServiceInter;
import com.li.service.inters.MajorServiceInter;
import com.li.service.inters.StudentServiceInter;
import com.li.service.inters.SystemStatusServiceInter;
import com.li.service.inters.TeacherServiceInter;

public class App1 {
	public static void main(String args[]){
		loginStudent();
	}

	private static void addTeacher() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		TeacherServiceInter teacherServiceInter = (TeacherServiceInter) ac.getBean("teacherService");
		DeptServiceInter deptServiceInter = (DeptServiceInter) ac.getBean("deptService");
		
		Dept dept = (Dept) deptServiceInter.findById(Dept.class, 1);
		
//		Teacher teacher = new Teacher(dept, "2011000001", "王老师", "123456", 1, "13999999999", "wang@admin.com");
//		deptServiceInter.add(teacher);
	}

	private static void loginStudent() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentServiceInter studentServiceInter = (StudentServiceInter) ac.getBean("studentService");
		
		Student student = studentServiceInter.login("20113108", "1349202");
		if(student != null){
			System.out.println(student.toString());
		}
	}

	private static void addStudent() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ClazzServiceInter clazzServiceInter = (ClazzServiceInter) ac.getBean("clazzService");
		StudentServiceInter studentServiceInter = (StudentServiceInter) ac.getBean("studentService");
		
		Clazz clazz = (Clazz) clazzServiceInter.findById(Clazz.class, 1);
//		Student student = new Student(clazz, "20113109", "李国钦", "1349202", "13764001115", "liguoqinjim@163.com");
//		studentServiceInter.add(student);
	}

	private static void addClazz() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		MajorServiceInter majorServiceInter = (MajorServiceInter) ac.getBean("majorService");
		ClazzServiceInter clazzServiceInter = (ClazzServiceInter) ac.getBean("clazzService");
		Major major = (Major) majorServiceInter.findById(Major.class, 1);
		
		Clazz clazz = new Clazz(major, "软件工程2011221", "2011");
		Clazz clazz2 = new Clazz(major, "软件工程2011222", "2011");
		clazzServiceInter.add(clazz);
		clazzServiceInter.add(clazz2);
	}

	private static void addMajor() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		StudentServiceInter studentServiceInter = (StudentServiceInter) ac.getBean("studentService");
//		Student student = new Student("20113109", "李国钦", "1349202", "13764001115", "liguoqinjim@163.com");
//		studentServiceInter.add(student);
		DeptServiceInter deptServiceInter = (DeptServiceInter) ac.getBean("deptService");
		MajorServiceInter majorServiceInter = (MajorServiceInter) ac.getBean("majorService");
		
		Dept dept = (Dept) deptServiceInter.findById(Dept.class, 1);
		Major major = new Major(dept, "计算机科学与技术");
		majorServiceInter.add(major);
	}

	private static void executeQuery() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		DeptServiceInter deptServiceInter = (DeptServiceInter) ac.getBean("deptService");
		List<Dept> depts = deptServiceInter.executeQuery("from Dept", null);
		for(Dept dept : depts){
			System.out.println("id:" + dept.getDeptId() + " name:" + dept.getDeptName() + " tel:" + dept.getDeptTel());
		}
	}

	private static void update() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		DeptServiceInter deptServiceInter = (DeptServiceInter) ac.getBean("deptService");
		Dept dept = (Dept) deptServiceInter.findById(Dept.class, 4);
		dept.setDeptName("暴力学院");
		deptServiceInter.update(dept);
	}

	private static void delById() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		DeptServiceInter deptServiceInter = (DeptServiceInter) ac.getBean("deptService");
		Dept dept = new Dept("计算机科学与技术学院", "021-50011000");
		deptServiceInter.add(dept);
		deptServiceInter.delById(Dept.class, 3);
	}

	private static void addDept() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		DeptServiceInter deptServiceInter = (DeptServiceInter) ac.getBean("deptService");
		Dept dept = new Dept("计算机科学与技术学院", "021-50011000");
		deptServiceInter.add(dept);
		SystemStatus systemStatus = new SystemStatus("第一轮选课", 1);
		SystemStatusServiceInter inter = (SystemStatusServiceInter) ac.getBean("systemStatusService");
//		BasicServiceInter inter = (BasicServiceInter) ac.getBean("basicService");
		inter.add(systemStatus);
	}
}
