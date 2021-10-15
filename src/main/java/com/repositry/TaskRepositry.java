package com.repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.TaskEntity;

public interface TaskRepositry extends JpaRepository<TaskEntity, Long> {
	
	

}
