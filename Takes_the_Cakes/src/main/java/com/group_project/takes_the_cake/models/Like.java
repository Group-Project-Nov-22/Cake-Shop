//package com.group_project.takes_the_cake.models;
//
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//
//
//@Entity
//public class Like {
//	
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private Long id;
//	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name="user_id")
//	private User user;
//	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name="cake_id")
//	private Cake cake;
//	
//	public Like() {
//		
//	}
//
//	public Long getId() {
//		return id;
//	}
//
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}
//
//	public Cake getCake() {
//		return cake;
//	}
//
//	public void setCake(Cake cake) {
//		this.cake = cake;
//	}
//
//}
