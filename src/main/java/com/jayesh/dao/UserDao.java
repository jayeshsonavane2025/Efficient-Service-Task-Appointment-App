package com.jayesh.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.jayesh.model.Orders;
import com.jayesh.model.ServiceProvider;
import com.jayesh.model.User;

@Component
public class UserDao {

	 @Autowired
	 private HibernateTemplate hibernateTemplate;
	 @Transactional
	public void registeUser(User user) {
		// TODO Auto-generated method stub
		 try {
	            // Implement validation logic if needed
	            System.out.println(user.getUname());
	            hibernateTemplate.save(user);
	        } catch (Exception e) {
	            // Log the exception or handle it according to your application's needs
	            e.printStackTrace();
	            throw new RuntimeException("Error occurred while registering the user", e);
	        }
		
		
	}
	public User getObject(String uid) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(User.class, uid);
	}
	 
	 public boolean validateUserLogin(String uid, String upassword) {
	        // Retrieve the ser by sid
	        User user = hibernateTemplate.get(User.class, uid);

	        
	        // Check if ServiceProvider with given sid exists and the email matches the provided password
	        return user != null && user.getUpassword().equals(upassword) ;
	    }
	    
	    
	    
	 @PersistenceContext
	 private EntityManager entityManager;

	 @Transactional
	 public List<Orders> findOrdersByEmailAndContact(String email, String contact) {
	     Session hibernateSession = entityManager.unwrap(Session.class);

	     // Using HQL (Hibernate Query Language) to retrieve orders based on email and contact
	     String hql = "FROM Orders o WHERE o.contact = :contact AND o.email = :email";
	     Query<Orders> query = hibernateSession.createQuery(hql, Orders.class);
	     query.setParameter("contact", contact);
	     query.setParameter("email", email);

	     return query.getResultList();
	 }

	 

}
