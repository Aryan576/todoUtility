package com.repositry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entity.TaskEntity;

public interface TaskRepositry extends JpaRepository<TaskEntity, Long> {

	List<TaskEntity> findByuserid(Long userid);

	TaskEntity findByTaskid(Long taskid);
	
	

	/*
	 * @Query("select * from tasks as t where t.important=1") List<TaskEntity>
	 * findByimportant(Integer important);
	 */

}
