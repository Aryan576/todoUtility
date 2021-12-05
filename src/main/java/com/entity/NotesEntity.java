package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "notes")
public class NotesEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long notesid;
	
	String notes;
	
	Long userid;
	
	
}
