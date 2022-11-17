package com.group_project.takes_the_cake.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="users")
public class User {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message="¡Your Name is Required¡")
	@Size(min=3, max=255, message="¡Name must be a minimum of 3 character and a maximum of 255 characters¡")
	private String name;
	
	@NotEmpty(message="¡Your Email is Required¡")
	@Email(message="¡Please Enter a Valid Email¡")
	private String email;
	
	@NotEmpty(message="¡A Password is Required¡")
	@Size(min=8, max=100, message="¡Please Enter a Password that is between 8 and 100 characters¡")
	private String password;
	
	@Transient
	@NotEmpty(message="¡Please Confirm your Password¡")
	@Size(min=8, max=100, message="¡Please Enter a Password that is between 8 and 100 characters¡")
	private String confirm;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	
//	@OneToMany(mappedBy="user", fetch = FetchType.LAZY)
//	@JsonIgnore
//	private List<Like> likes;
	
	@OneToMany(mappedBy="user", fetch=FetchType.LAZY)
	@JsonIgnore
	private List<Cake> cakes;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
			 name = "likes", 
			 joinColumns = @JoinColumn(name = "user_id"), 
			 inverseJoinColumns = @JoinColumn(name = "cake_id")
			 )
	private List<Cake> likedCakes;

	
	
	public List<Cake> getLikedCakes() {
		return likedCakes;
	}

	public void setLikedCakes(List<Cake> likedCakes) {
		this.likedCakes = likedCakes;
	}

	public User() {}
	
	public User(
			@NotEmpty(message = "¡Your Name is Required¡") @Size(min = 3, max = 255, message = "¡Name must be a minimum of 3 character and a maximum of 255 characters¡") String name,
			@NotEmpty(message = "¡Your Email is Required¡") @Email(message = "¡Please Enter a Valid Email¡") String email,
			@NotEmpty(message = "¡A Password is Required¡") @Size(min = 8, max = 100, message = "¡Please Enter a Password that is between 8 and 100 characters¡") String password,
			@NotEmpty(message = "¡Please Confirm your Password¡") @Size(min = 8, max = 100, message = "¡Please Enter a Password that is between 8 and 100 characters¡") String confirm) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.confirm = confirm;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
	
	public List<Cake> getCakes(){
		return cakes;
	}
	
	public void setCakes(List<Cake> cakes) {
		this.cakes = cakes;
	}
	

	

	

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}
	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

}
