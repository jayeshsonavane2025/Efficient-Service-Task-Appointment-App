package com.jayesh.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

 
import com.jayesh.model.ServiceProvider;

@Component
public class ServiceProviderDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;
    @Transactional
    public void registerServiceProvider(ServiceProvider serviceProvider) {
        try {
            // Implement validation logic if needed
            System.out.println(serviceProvider.getSname());
            hibernateTemplate.save(serviceProvider);
        } catch (Exception e) {
            // Log the exception or handle it according to your application's needs
            e.printStackTrace();
            throw new RuntimeException("Error occurred while registering the service provider", e);
        }
}
    public boolean validateServiceProviderLogin(int serviceProviderId, String password) {
        // Retrieve the ServiceProvider by sid
        ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, serviceProviderId);

        
        // Check if ServiceProvider with given sid exists and the email matches the provided password
        return serviceProvider != null && serviceProvider.getSpassword().equals(password) &&serviceProvider.getsStatus().equalsIgnoreCase("Approved");
    }
    
    public void updateServiceProviderStatus(int sid, String status) {
        ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, sid);
        if (serviceProvider != null) {
            serviceProvider.setsStatus(status);
            hibernateTemplate.update(serviceProvider);
        }
        
    } 
    
    @Transactional
    public List<ServiceProvider> getAllServiceProviders() {
        return hibernateTemplate.loadAll(ServiceProvider.class);
    }
    @Transactional
	public void update(int sid) {
		// TODO Auto-generated method stub
		ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, sid);
		serviceProvider.setsStatus("Approved");;
		hibernateTemplate.update(serviceProvider);
		
		
	}
	public List<ServiceProvider> getAllAccounts() {
		// TODO Auto-generated method stub
		return hibernateTemplate.loadAll(ServiceProvider.class);
		 
	}
	@Transactional
	public void updatePending(int sId) {
		// TODO Auto-generated method stub
		ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, sId);
		serviceProvider.setsStatus("Pending");;
		hibernateTemplate.update(serviceProvider);
		
	}
	@Transactional
	public void updateDisapproved(int sId) {
		// TODO Auto-generated method stub
		ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, sId);
		serviceProvider.setsStatus("Disapproved");;
		hibernateTemplate.update(serviceProvider);
		
	}
	@Transactional
	public void updateRemove(int sId) {
		// TODO Auto-generated method stub
		ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, sId);
		hibernateTemplate.delete(serviceProvider);
		
	}
	public ServiceProvider getObject(int sId){
		return hibernateTemplate.get(ServiceProvider.class, sId);
 
}
	
    @PersistenceContext
    private EntityManager entityManager;
    @Transactional
    public List<ServiceProvider> findCustomByCategoryAndType(String sCategory, String sServiceType) {
        Session session = entityManager.unwrap(Session.class);

        // Using HQL (Hibernate Query Language)
        String hql = "FROM ServiceProvider WHERE sCategory = :sCategory AND sServiceType = :sServiceType";
        Query<ServiceProvider> query = session.createQuery(hql, ServiceProvider.class);
        query.setParameter("sCategory", sCategory);
        query.setParameter("sServiceType", sServiceType);

        return query.getResultList();
    }

}