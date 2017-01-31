package com.niit.suggestioncartfrontend.controller;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.suggestioncartbackend.dao.BillingAddressDAO;
import com.niit.suggestioncartbackend.dao.CartDAO;
import com.niit.suggestioncartbackend.dao.UserDAO;
import com.niit.suggestioncartbackend.model.BillingAddress;
import com.niit.suggestioncartbackend.model.UserDetails;


	@Controller
	public class UserCartController {

	    @Autowired
	    private UserDAO userDAO;
	   // @Autowired
	    //private CartDAO cartDAO;
	    
	    @Autowired
	    private BillingAddressDAO billingAddressDAO;
	   
	    @RequestMapping("/cart")
	    public String getCartItems(Principal username,Model model ){
	    	UserDetails userDetails = userDAO.get(username.getName());
	        int cartId = userDetails.getCart().getCartId();
	        model.addAttribute("cartId", cartId);
	        return "cart";
	    }
	    @RequestMapping("/saveBillingAddress")
	    public String savebillingAddress(BillingAddress billingAddress){
	    billingAddressDAO.saveOrUpdate(billingAddress);
	    return "redirect:/orderDetails";
	    }
	    @RequestMapping("/orderDetails")
	    public String getorderdetails(Principal username,Model model){
	    	UserDetails userDetails = userDAO.get(username.getName());
	        int cartId = userDetails.getCart().getCartId();
	        model.addAttribute("cartId", cartId);
	        return "OrderDetails";
	    }
	    @RequestMapping("/confirmorder")
	    public String confirm()
	    {
	    	return "payment";
	    }
	    @RequestMapping("/cancelorder")
	    public String cancel()
	    {
	    	return "orderCancel";
	    }
	    @RequestMapping("/placeOrder")
	    public String Order()
	    {
	    	return "ordercomplete";
	    }
	}

