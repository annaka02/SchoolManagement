package com.saraya.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;


import com.saraya.model.Students;

public class StudentService {
	public static List <Students> etudiant = new ArrayList();
	private int count = 3;
	static {
		etudiant.add(new Students(1,"Summer", "Walker","04/06/1996","","six months","05/08/2022"));
		etudiant.add(new Students(2,"India", "Royale","09/02/1995","", "twelve months","06/08/2022"));
		etudiant.add(new Students(3, "Jhene", "Aiko", "01/03/1994", "","12months","07/02/2022"));
		
	}


	public List <Students>retrieveAllStudents() {
		return etudiant;
	}

	public void addStudent(String image, String firstname, String lastname, String dateOfBirth, String registrationDate, String trainingDuration) {
		etudiant.add(new Students(++count, firstname,lastname,dateOfBirth,image, registrationDate, trainingDuration));
	}

	public void deleteStudent(String firstname) {
		Iterator<Students> iterate = etudiant.iterator();
		while(iterate.hasNext()) {
			Students etudiant = iterate.next();
			if(etudiant.getFirstname() == firstname) {
				iterate.remove();
			}
		}
		
	}
	}
