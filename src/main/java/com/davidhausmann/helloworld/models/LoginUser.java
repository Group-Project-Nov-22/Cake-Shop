package com.davidhausmann.helloworld.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

public class LoginUser {
	@NotEmpty(message = "¡Email is Required¡")
	@Email(message="¡Please enter a valid eamil¡")
	private String email;
	
	@NotEmpty(message="¡Password is Required¡")
	private String password;
	
	public LoginUser() {}
	
	public LoginUser(
			@NotEmpty(message = "¡Email is Required¡") @Email(message = "¡Please enter a valid eamil¡") String email,
			@NotEmpty(message = "¡Password is Required¡") String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
