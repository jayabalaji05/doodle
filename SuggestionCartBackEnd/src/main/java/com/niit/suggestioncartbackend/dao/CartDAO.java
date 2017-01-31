package com.niit.suggestioncartbackend.dao;

import java.io.IOException;
import java.util.List;

import com.niit.suggestioncartbackend.model.Cart;


public interface CartDAO {
	 Cart getCartById (int cartId);
Cart validate(int cartId) throws IOException;
	   void update(Cart cart);
	   List<Cart> getCartByUsername (String username);
}
