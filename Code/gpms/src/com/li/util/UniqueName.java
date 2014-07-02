package com.li.util;

import java.util.UUID;

public class UniqueName {
	public static String getUniqueFileName(String fileName){
		String backName = fileName.substring(fileName.lastIndexOf('.'),fileName.length());
		String newName = UUID.randomUUID().toString() + backName;
		return newName;
	}
//	public static void main(String args[]){
//		String fileName = "123456c.cdsacds.jpg.exe";
//		String backName = fileName.substring(fileName.lastIndexOf('.'),fileName.length());
//		System.out.println(backName);
//	}
}
