package com.proj.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.proj.model.FoodModel;




public interface FoodRepository extends CrudRepository<FoodModel, String>{
//FoodModel findByLastNameandFirstName(String fname,String lname);
	//List<FoodModel> findByFoodname(String fname);
}
