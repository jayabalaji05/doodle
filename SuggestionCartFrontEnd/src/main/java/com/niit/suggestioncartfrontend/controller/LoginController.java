package com.niit.suggestioncartfrontend.controller;

import java.util.ArrayList;
import java.util.Collection;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import com.niit.suggestioncartbackend.dao.ProductDAO;
import com.niit.suggestioncartbackend.dao.RegisterDAO;
import com.niit.suggestioncartbackend.model.Cart;
import com.niit.suggestioncartbackend.model.Register;


@Controller
public class LoginController 
{
	@Autowired(required=true)
	RegisterDAO rdao;

	@Autowired(required=true)
	ProductDAO pdao;

	@SuppressWarnings("unchecked")
	@RequestMapping(value ="/loginSuccess")
	public String login_session_attributes(HttpSession session,Model model) 
	{
		System.out.println("Hai");
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
			System.out.println(authority.getAuthority());
		    if (authority.getAuthority().equals(role)) 
		    {
		    	session.setAttribute("UserLoggedIn", "true");
		   		session.setAttribute("username", userid);
		   		page="home";
		   		ArrayList list=(ArrayList)pdao.listProduct();
		   		Gson gson=new Gson();
		   		String jsonInString=gson.toJson(list);
		   		model.addAttribute("list",jsonInString);
		   		ArrayList<Cart> cartitem=new ArrayList<Cart>();
		   		session.setAttribute("mycart", cartitem);
		   		break;
		    }
		    else 
		    {
		   		session.setAttribute("LoggedIn", "true");
		   		session.setAttribute("Administrator", "true");
		   		page="admin";
		   		break;
		   }
		}
		return page;
	}
	@RequestMapping("/login")
	public String showLogin()
	{
	System.out.println("login");
	return "login";
	}
	@RequestMapping(value="/register",method =RequestMethod.GET)
	public ModelAndView submitRegister(@ModelAttribute("Register")Register register) 
	{
		System.out.println("Register");
		ModelAndView model=new ModelAndView("register");
		return model; 
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView Success(Register reg, Model m)
	{
		rdao.addUser(reg);
		System.out.println("success");
		ModelAndView model=new ModelAndView("login","register", new Register());
		return model;
	}
}