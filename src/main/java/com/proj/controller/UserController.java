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
import com.proj.model.UserModel;
import com.proj.service.BookingService;
import com.proj.service.UserService;
@Controller
public class UserController 
{
	@Autowired
	private UserService userservice;
	@Autowired
	private UserService user1service;
	@Autowired
	private BookingService bookingservice;
			
	@RequestMapping(method=RequestMethod.POST, value="/auser")
    public ModelAndView addUser(UserModel userobj)
	{
		System.out.println("INSIDE adduser Method IN CONTROLLER CLASS");
		
		userobj = userservice.addRecord(userobj);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("regsuccessmsg", "THANKS FOR REG..NOW LOGIN");
		mv.setViewName("registration.jsp");
		
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/buser")
	public ModelAndView openPageAfterLoginCheck(@RequestParam String email, String password,HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		
		UserModel replyfromservice = userservice.searchByEmail(email);
		
		if(replyfromservice != null)
		{
			session.setAttribute("userid", email);
			session.setAttribute("username", replyfromservice.getName());
			mv.setViewName("userafterlogin.jsp");
		}
		else
		{
			mv.addObject("errmsg", "INVALID UID OR PASS");
			mv.setViewName("login.jsp");
		}
		
		return mv;

	}
	

	@RequestMapping(value="/viewallfood")
	public ModelAndView showAllGetFood(HttpSession session)
	
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("food",user1service.showAllFood());
		mv.setViewName("booking.jsp");
		return mv;
		
	}
	
			//FOR BOOKING FOOD
			@RequestMapping(value="/food",method=RequestMethod.POST)
			public String addBookings(BookingModel bookmodel,HttpSession session) 
			{
				bookmodel = bookingservice.addBooking(bookmodel);
				String useremail = (String)session.getAttribute("userid");
				ArrayList<BookingModel> booklist = bookingservice.getAlldbSearchByEmail(useremail);
				session.setAttribute("bookinglist", booklist);
				return "usershowbooking.jsp";
			}
			
			//FOR GET ALL RECORD FROM BOOKING DB
			@RequestMapping("/usershowallbooking")
			public String userViewAllbooking(HttpSession session)
			{
				String useremail = (String)session.getAttribute("userid");
				ArrayList<BookingModel> booklist = bookingservice.getAlldbSearchByEmail(useremail);
				session.setAttribute("bookinglist", booklist);
				System.out.println(booklist.size());
				return "usershowbooking.jsp";
			}
			
			//FOR DELETE BOOKING FROM DB
			@RequestMapping("/deletebid")
			public String userBookingDelete(@RequestParam int bid,HttpSession session)
			{
				bookingservice.deleteBookingRecord(bid);
				String useremail = (String)session.getAttribute("userid");
				ArrayList<BookingModel> booklist = bookingservice.getAlldbSearchByEmail(useremail);
				session.setAttribute("bookinglist", booklist);
				
				return "usershowbooking.jsp";
			}
	
	@RequestMapping("/userhome")
	public String openUserDashBoard()
	{
		return "userafterlogin.jsp";
	}

	@RequestMapping("/userlogout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("username");
		session.removeAttribute("userid");
		session.invalidate();
		
		
		return "Home.jsp";
	}

}

