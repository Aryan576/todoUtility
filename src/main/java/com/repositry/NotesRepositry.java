package com.repositry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.NotesEntity;

@Repository
public interface NotesRepositry extends JpaRepository<NotesEntity, Long> {
		NotesEntity findByUserid(Long userid);
		
		
}
