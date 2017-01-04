package com.niit.suggestioncartbackend.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.suggestioncartbackend.model.Login;
import com.niit.suggestioncartbackend.model.Register;

@Repository
public class RegisterDAOImpl implements RegisterDAO 
{
	
	@Autowired(required=true)
	SessionFactory sessionFactory;
	
	public void addUser(Register reg)
	{
		System.out.println("Registering DAO ");
		System.out.println(reg.getUserName());
		Login lc=new Login();
		lc.setUsername(reg.getUserName());
		lc.setPassword(reg.getPassword());
		System.out.println("Login Credentials");
		try
		{
		 Session session=sessionFactory.openSession();
		 Transaction tx=session.beginTransaction();
		 //tx.begin();
		 session.save(reg);
		 session.save(lc);
		 tx.commit();
		 session.flush();
		 session.close();
	    }
		catch(Exception ex)
		{
			System.out.println("Error " +ex);
		}
	}
	public Register getInfo(String lc)
	{
		Session session=sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		Register logobj=(Register)session.get(Register.class, lc);
		System.out.println(logobj.getUserName());
		tx.commit();
		return logobj;
	}
}
