package com.niit.suggestioncartbackend.dao;

import com.niit.suggestioncartbackend.model.UserOrder;

public interface OrderDAO {
	void addOrder(UserOrder userOrder);
    double getOrderGrandTotal(int cartId);
}

