package com.li.main;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Test {
	public static void main(String args[]){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
	}
}
