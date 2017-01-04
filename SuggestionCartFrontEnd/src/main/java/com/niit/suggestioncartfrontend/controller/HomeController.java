	package com.niit.suggestioncartfrontend.controller;
	
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	
	@Controller
	public class HomeController {
		
		@RequestMapping("/")
		public String gotohome()
		{
			return "home";
					
		}
		@RequestMapping("/home")
		public String home()
		{
			return "home";
		}
		
		@RequestMapping("/home1")
		public String logging()
		{
			return "welcome";
		}
		@RequestMapping("/welcome")
		public String validate(@RequestParam("userID")String userID,@RequestParam("password") String pwd,HttpSession Session)
		{
			if((userID.equals("niit") && pwd.equals("niit")))
			{
				Session.setAttribute("SuccessMessage","Login Successful");
			}
			else
			{
				if((userID.equals("admin")&&pwd.equals("admin")))
				{
					Session.setAttribute("SuccessMessage","Login Successful");
					return "admin";
				}
				else
				{
					Session.setAttribute("ErrorMessage","Invalid Credentials");
				}
				Session.setAttribute("ErrorMessage","Invalid Credentials");
			}
			return "index";
		}
		
		@RequestMapping("/mobile_phones")
		public String products()
		{
			return "product";
		}
		@RequestMapping("/suggestion_cart")
		public String suggestion()
		{
			return "suggestion";
		}
		@RequestMapping("/logout")
		public String logout(HttpSession Session, HttpServletResponse response){
			response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
			response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
			response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
			response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
			Session.invalidate();
			return "home";
		}
		@RequestMapping("/wedding_suggestion")
		public String wedding()
		{
			return "suggestion1";
		}
		@RequestMapping("/birthday_suggestion")
		public String birthday()
		{
			return "suggestion2";
		}
		@RequestMapping("/about_us")
		public String aboutus()
		{
			return "aboutus";
		}
		@RequestMapping("/appliance_products")
		public String appliance()
		{
			return "product1";
		}
		@RequestMapping("/Books&More")
		public String books()
		{
			return "product2";
		}
		@RequestMapping("/contact_us")
		public String contactus()
		{
			return "contactus";
		}
		@RequestMapping("/admin")
		public String admin()
		{
			return "admin";
		}
	}
