package org.killer.service;

import java.util.Date;

import org.killer.dao.CodeDAO;

public class Test {

	public static void main(String[] args) {
		String test = "sfdsf,fghfg,fsgsfg,dsfsg,,";
		String[] a = test.split(",");
		for(String tem : a){
			System.out.println(tem+a.length);
		}
	}
	
}
