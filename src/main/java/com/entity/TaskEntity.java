package com.entity;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
@Entity
@Table(name = "tasks")
public class TaskEntity {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long taskid;
	
	String taskname,description;
	
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	LocalDate startDate;
	
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	LocalDate endDate;
	

	String tasktime;
	
	Long userid;
	Integer important=0;

}
