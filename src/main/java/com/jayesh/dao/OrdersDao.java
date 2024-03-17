package com.jayesh.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;


import org.hibernate.SQLQuery;
import org.hibernate.Query;
import org.hibernate.Session; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.jayesh.model.Orders;
import com.jayesh.model.ServiceProvider;
 

@Component
public class OrdersDao {


	 @Autowired
	 private HibernateTemplate hibernateTemplate;
	 @Transactional
	public void bookOrder(Orders orders) {
		// TODO Auto-generated method stub
		 try {
	           
	            hibernateTemplate.save(orders);
	        } catch (Exception e) {
	            // Log the exception or handle it according to your application's needs
	            e.printStackTrace();
	            throw new RuntimeException("Error occurred while registering service", e);
	        }
		
		
	}
	 @Transactional
	 public List<Orders> getAllOrders(String userId) {
		    String hql = "FROM Orders WHERE userId = :userId";
		    TypedQuery<Orders> query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql, Orders.class);
		    query.setParameter("userId", userId);
		    return query.getResultList();
	
	 }
	 
	 @Transactional
	public void updateApprove(int oId) {
		// TODO Auto-generated method stub
		Orders orders=hibernateTemplate.get(Orders.class, oId);
		orders.setStatus("Approved");
		hibernateTemplate.update(orders);
	}
	 
	 
	 @Transactional
		public void updateDisapprove(int oId) {
			// TODO Auto-generated method stub
			Orders orders=hibernateTemplate.get(Orders.class, oId);
			orders.setStatus("Disapproved");
			hibernateTemplate.update(orders);
		}
	 
	 @Transactional
		public void updatePending(int oId) {
			// TODO Auto-generated method stub
			Orders orders=hibernateTemplate.get(Orders.class, oId);
			orders.setStatus("Pending");
			hibernateTemplate.update(orders);
		}
	 
	 
	
	
	  
	 
		public void update(int sid) {
			// TODO Auto-generated method stub
			ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, sid);
			serviceProvider.setsStatus("Approved");;
			hibernateTemplate.update(serviceProvider);
			
			
		}
		 
}
