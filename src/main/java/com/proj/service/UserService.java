package com.proj.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.proj.model.FoodModel;
import com.proj.model.UserModel;
//By default Service Class is Singleton and register it in spring framework
@Service
public class UserService 
{
	@Autowired   //CREATE OBJECT OF STUDENT REPOSITORY Interface
	private UserRepository repobj;
	@Autowired
	private FoodRepository rep1obj;
	
	public UserModel addRecord(UserModel userobj) 
	{
		System.out.println("INSIDE addRecord METHOD in SERVICE CLASS");
		System.out.println("Name "+userobj.getEmail());
						
		//save return the object which it saved
		userobj =repobj.save(userobj);
		
		return userobj;
	}
	
	//METHOD FOR SEARCH EMAIL FOR LOGIN THE USER
		public UserModel searchByEmail(String email)
		{
			System.out.println("INSIDE searchByEmail METHOD in SERVICE CLASS");
			UserModel cobj = repobj.findByEmail(email);
			return cobj;
		}
		
		
		public List<FoodModel> showAllFood()
		{
			List<FoodModel> allfood = new ArrayList<FoodModel>();
			for(FoodModel fm_obj:rep1obj.findAll()) 
			{
				allfood.add(fm_obj);
			}
			//foodrepositoryobj.findAll().forEach(allfood::add);
			return allfood;
		}
		
//	public UserModel userLoginCheck(String email, String password)
//	{
//		UserModel userlist = repobj.findByEmail(email);
//		
//		if(userlist.size() > 0)
//		{
//			if(userlist.get(0).getPassword().equals(password))
//				return userlist.get(0);
//		}
//		return null;
//	}
	
	/*
	public void deleteStudentRecord(int roll) 
	{
		System.out.println("INSIDE deleteStudentRecord METHOD in SERVICE CLASS");
		
		srobj.deleteById(roll);
	}
	
	*/
	

}
