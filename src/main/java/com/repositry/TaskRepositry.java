package com.repositry;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.entity.TaskEntity;
@Repository
public interface TaskRepositry extends JpaRepository<TaskEntity, Long> {

	List<TaskEntity> findByuserid(Long userid);

	TaskEntity findByTaskid(Long taskid);

	
		List<TaskEntity> findByUseridAndImportant(Long userid,Integer important);
		
		@Query(value="select * from tasks t where t.start_date=CURRENT_DATE and t.end_date=CURRENT_DATE and t.userid=:userid",nativeQuery = true)
		List<TaskEntity> myDay(@Param("userid")Long userid);
		

		/* @Query(value="select count(*) from tasks",nativeQuery = true) */
		/* Long countBystartDateAndUserid(LocalDate startDate,Long Userid); */

		
		@Query(value="select count(*) from tasks t where t.start_Date=:obj and t.userid=:userid",nativeQuery = true)
		Long countBystartDateAndUserid(LocalDate obj, Long userid);
		
		@Query(value="select count(*) from tasks t where t.important=1 and t.userid=:userid",nativeQuery = true)
		Long countByImportantAndUserid(Long userid);
		
		Long countByUserid(Long Userid);
		
	

}
