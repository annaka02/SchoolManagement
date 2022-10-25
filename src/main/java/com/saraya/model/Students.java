package com.saraya.model;


public class Students {
	private String image;
	private String firstname;
	private String lastname;
	private String dateOfBirth;
	private String registrationDate;
	private String trainingDuration;

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getTrainingDuration() {
		return trainingDuration;
	}

	public void setTrainingDuration(String trainingDuration) {
		this.trainingDuration = trainingDuration;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

		public Students(int count, String firstname, String lastname, String dateOfBirth, String image, String registrationDate, String trainingDuration) {
			super();
			this.image = image;
			this.firstname = firstname;
			this.lastname = lastname;
			this.dateOfBirth = dateOfBirth;
			this.registrationDate = registrationDate;
			this.trainingDuration = trainingDuration;
		}
	



	
}
