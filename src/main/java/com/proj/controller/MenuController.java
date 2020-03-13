package com.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MenuController 
{
	@RequestMapping("/")
	public String openHomePage()
	{
		return "Home.jsp";
	}
	@RequestMapping("/login")
	public String openloginPage()
	{
		return "login.jsp";
	}
	@RequestMapping("/reg")
	public String openregPage()
	{
		return "registration.jsp";
	}
	@RequestMapping("/adminlogin")
	public String openadminloginPage()
	{
		return "adminlogin.jsp";
	}
	@RequestMapping("/about")
	public String openaboutPage()
	{
		return "About.jsp";
	}
	
	@RequestMapping("/searchdelete")
	public String openSearchdeletePage()
	{
		return "searchdelete.jsp";
	}
	
	//@RequestMapping("/alldb")
	//public String openViewAllPage()
	//{
		//return "alldb.jsp";
	//}
	
//	@RequestMapping("/searchbyname")
//	public String openSearchbyNamePage()
//	{
//		return "searchbyname.jsp";
//	}
	
	
	@RequestMapping("/addfood")
	public String openAddFoodPage() 
	{
		return "addfood.jsp";
	}
	



}
