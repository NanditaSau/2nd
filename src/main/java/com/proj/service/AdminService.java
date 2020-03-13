package com.proj.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.model.FoodModel;
import com.proj.model.UserModel;

@Service
public class AdminService 
{
	@Autowired
	private FoodRepository foodrepositoryobj;
	
	//FOR ADD FOOD 
	public FoodModel addFoodDetails(FoodModel fmobj) 
	{
		fmobj = foodrepositoryobj.save(fmobj);
		return fmobj;
	}
	
	//FOR FETCH ALL DB FROM REPOSETORY AND SHOW THOSE DATA IN WEB OR JSP PAGE ON addfood.jsp PAGE
	public List<FoodModel> showAllFood()
	{
		List<FoodModel> allfood = new ArrayList<FoodModel>();
		for(FoodModel fm_obj:foodrepositoryobj.findAll()) 
		{
			allfood.add(fm_obj);
		}
		//foodrepositoryobj.findAll().forEach(allfood::add);
		return allfood;
	}
	
	public  FoodModel getFoodRecordFromDB(String fid)
	{
		System.out.println("INSIDE getFoodRecordFromDB METHOD in SERVICE CLASS");
	
		FoodModel fodobj = foodrepositoryobj.findById(fid).orElse(new FoodModel());
		return fodobj;
		 
	}
	
	public  void deleteFoodrecord(String fid)
	{
		foodrepositoryobj.deleteById(fid);
		
	}
	

}
