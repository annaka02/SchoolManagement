package com.saraya.service;

public class UserValidation {
	public boolean isValid(String user,String pass) {
		if(user.equalsIgnoreCase("anna ka")&& pass.equals("annaka02")) {
			return true;
			}
		return false;
		   
		
	}

}
