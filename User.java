package com;
public class User {
    private String name;
    private String email;
    private String gender;
    private Integer age;
    private String contactNumber;
	public User() {
		super();
		
	}
	public User(String name, String email, String gender, Integer age, String contactNumber) {
		super();
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.age = age;
		this.contactNumber = contactNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	
    
}
