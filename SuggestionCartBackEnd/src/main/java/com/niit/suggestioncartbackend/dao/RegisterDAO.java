package com.niit.suggestioncartbackend.dao;

import com.niit.suggestioncartbackend.model.Register;

public interface RegisterDAO {
	public void addUser(Register reg);
	
	public Register getInfo(String lc);
}
