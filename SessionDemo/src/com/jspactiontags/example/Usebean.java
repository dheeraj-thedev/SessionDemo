package com.jspactiontags.example;

public class Usebean {
	private int id; // setting up the values to setters and getters
	private String username, email, gender;

	public Usebean() {

	}

	@Override
	public String toString() {
	return "Id : "+this.id+"Name : "+this.username;
	}
	
	public Usebean(int id, String username, String email, String gender) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.gender = gender;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
