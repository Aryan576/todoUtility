package com.repositry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.entity.TaskEntity;

public interface TaskRepositry extends JpaRepository<TaskEntity, Long> {

	List<TaskEntity> findByuserid(Long userid);

	TaskEntity findByTaskid(Long taskid);

	/*
	 * @Query(value="select * from tasks  t where t.important=1 and t.userid=userid"
	 * ,nativeQuery = true) List<TaskEntity> findByImportant(@Param("userid") Long
	 * userid);
	 */
		List<TaskEntity> findByUseridAndImportant(Long userid,Integer important);
		
	/*
	 * @Query("select * from tasks as t where t.important=1") List<TaskEntity>
	 * findByimportant(Integer important);
	 * 
	 * @Query("SELECT a FROM Author a WHERE firstName = :firstName AND lastName = :lastName"
	 * ) List<Author> findByFirstNameAndLastName(@Param("lastName") String
	 * firstName, @Param("firstName") String lastName); }
	 * 
	 */

}
