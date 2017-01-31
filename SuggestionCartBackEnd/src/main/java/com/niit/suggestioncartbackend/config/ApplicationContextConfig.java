package com.niit.suggestioncartbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.suggestioncartbackend.model.BillingAddress;
import com.niit.suggestioncartbackend.model.CardDetail;
import com.niit.suggestioncartbackend.model.Cart;
import com.niit.suggestioncartbackend.model.CartItem;
import com.niit.suggestioncartbackend.model.Category;
import com.niit.suggestioncartbackend.model.Product;
import com.niit.suggestioncartbackend.model.ShippingAddress;
import com.niit.suggestioncartbackend.model.Supplier;
import com.niit.suggestioncartbackend.model.UserDetails;
import com.niit.suggestioncartbackend.model.UserOrder;

@Configuration
@ComponentScan("com.niit")
@EnableTransactionManagement
public class ApplicationContextConfig {

	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
			
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/NIITDB");

		dataSource.setDriverClassName("org.h2.Driver");

		dataSource.setUsername("jb");
		dataSource.setPassword("jb");
		return dataSource;
	}

	
	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {

		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		 sessionBuilder.addAnnotatedClasses(Supplier.class);
		 sessionBuilder.addAnnotatedClasses(Category.class);
		 sessionBuilder.addAnnotatedClasses(UserDetails.class);
	     sessionBuilder.addAnnotatedClasses(Product.class);
	     sessionBuilder.addAnnotatedClasses(BillingAddress.class);
	     sessionBuilder.addAnnotatedClasses(ShippingAddress.class);
	     sessionBuilder.addAnnotatedClasses(Cart.class);
	     sessionBuilder.addAnnotatedClasses(CardDetail.class);
	     sessionBuilder.addAnnotatedClasses(CartItem.class);
	     sessionBuilder.addAnnotatedClasses(UserOrder.class);
		
			return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

		return transactionManager;
	}

	

}
