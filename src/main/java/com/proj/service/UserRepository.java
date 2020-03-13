package com.proj.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.proj.model.UserModel;

public interface UserRepository extends CrudRepository<UserModel, Integer>
{
	 UserModel findByEmail(String email);

}
