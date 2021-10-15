package com.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
@Table(name = "taks")
public class TaskEntity {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long taskid;
	
	String taskname,descriptionp;
	Date startdate,enddate;
	
	@CreationTimestamp
	Date tasktime;
	
	Long userid;

}
