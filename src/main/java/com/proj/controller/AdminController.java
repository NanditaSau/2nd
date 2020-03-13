package com.proj.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.proj.model.BookingModel;
import com.proj.model.FoodModel;

import com.proj.service.AdminService;
import com.proj.service.BookingService;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService foodserviceobj;
	@Autowired
	private BookingService bookingservice;
	

	@RequestMapping(method=RequestMethod.POST, value="/al")
	public ModelAndView openPageAfterLoginCheck(@RequestParam("name") String n, String password,HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		if(n.equals("admin") && password.equals("admin"))
		{
			session.setAttribute("adminuser", "ADMIN");
			mv.addObject("msg", "Nandita");
			mv.setViewName("adminafterlogin.jsp");
	
		}
		else
		{
			mv.addObject("errmsg", "INVALID UID OR PASS");
			mv.setViewName("adminlogin.jsp");
		}
		
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.POST,value="/adminaddfood")
	public ModelAndView AddFood(FoodModel foodmobj)
	{
		foodmobj = foodserviceobj.addFoodDetails(foodmobj);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "Food ADDED SUCESSFULLY");
		mv.setViewName("addfood.jsp");
		return mv;
	}
	
	@RequestMapping(value="/viewall")
	public ModelAndView showAllGetFood()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("food",foodserviceobj.showAllFood());
		mv.setViewName("alldb.jsp");
		return mv;
	}
	
	@RequestMapping("/search")
	public ModelAndView getFood(@RequestParam String fid)
	{
		System.out.println("INSIDE getAllFood Method IN CONTROLLER CLASS "+fid);
		
		FoodModel fmobj = foodserviceobj.getFoodRecordFromDB(fid);
		System.out.println(fmobj.getFid());
		ModelAndView mv = new ModelAndView();
	
		if (fmobj.getFid() != null)
	    {
		mv.addObject("stinfo",fmobj);	
		}
		else

		{
		mv.addObject("msg", "INVALID FOOD ID");		
		}
		
		mv.setViewName("searchdelete.jsp");
		
		return mv;
	}
	
	@RequestMapping("/deletefood")
	public ModelAndView deleteFood(@RequestParam String fid)
	{
		System.out.println("INSIDE deleteUser Method IN CONTROLLER CLASS");
		
		foodserviceobj.deleteFoodrecord(fid);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "RECORD DELETED");
		mv.setViewName("searchdelete.jsp");
		return mv;
		
	}
	
	//FOR GET ALL RECORD FROM BOOKING DB
		@RequestMapping("/adminshowallbooking")
		public String openAdminViewAllbooking(HttpSession session)
		{
			ArrayList<BookingModel> booklist = bookingservice.getAllBookingRecordFromDB();
			session.setAttribute("bookinglist", booklist);
			System.out.println(booklist.size());
			return "adminshowbooking.jsp";
		}
	
	
	@RequestMapping("/adminhome")
	public String openAdminDashBoard()
	{
		return "adminafterlogin.jsp";
	}

	@RequestMapping("/adminlogout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("adminusername");
		session.invalidate();
		
		return "Home.jsp";
	}

}
