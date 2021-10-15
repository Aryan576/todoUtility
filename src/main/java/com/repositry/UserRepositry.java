package com.repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.UserEntity;

public interface UserRepositry  extends JpaRepository<UserEntity, Long>{
	
	UserEntity findByEmailAndPassword(String email,String password);

}
