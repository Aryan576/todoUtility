package com.entity;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedDate;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "users")
public class UserEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long userid;
	
	String firstname;
	String lastname;
	String dob;
	int age;
	String mobileno;
	String authtoken;
	
	@CreationTimestamp
	Date createdDate;
	
	@UpdateTimestamp
	Date updatedDate;
	
	String email;
	
	String password;
	
	
	
	
	
	
	
	
	

}
