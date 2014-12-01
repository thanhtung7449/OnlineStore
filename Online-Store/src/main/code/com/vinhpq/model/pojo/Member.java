package com.vinhpq.model.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.springframework.stereotype.Component;

//@NamedQuery(
//	name = "findMemberByFirstName",
//	query= "from Member where first_name = :firstName")
@Entity
@Table(name="member")
public class Member{
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	
	public Member(){	
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
	public int getId() {
		return id;
	}

	public void setId(int i) {
		this.id = i;
	}
	
	@NotNull
	@Length(min=1, max=100)
	@Column(name="first_name")
	public String getFirstName() { 
		return firstName; 
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@NotNull
	@Length(min=1, max=100)
	@Column(name="last_name")
	public String getLastName() { 
		return lastName; 
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	@Email
	@Column
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Transient
	public String getFullName(){
		return firstName + " " + lastName;
	}
	
	public String toString() {
		return "[Member: "+id+", FistName: "+firstName+", LastName: "+lastName+", Email: "+email+"];";
	}
}
