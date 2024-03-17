package com.jayesh.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.jayesh.dao.OrdersDao;
import com.jayesh.dao.ServiceProviderDao;
import com.jayesh.model.Orders;
import com.jayesh.model.ServiceProvider;

@Controller
public class ServiceProviderController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	ServiceProvider serviceProvider = (ServiceProvider) context.getBean("serviceProvider");
	ServiceProviderDao serviceProviderDao = (ServiceProviderDao) context.getBean("serviceProviderDao");
	OrdersDao ordersDao=(OrdersDao)context.getBean("ordersDao");
			
	 
	@RequestMapping("/serviceProviderLogin")
	public String openSPLogin()
	{
		return "serviceProviderLogin";
	}
	
	@RequestMapping("/afterRegisterServiceProviderLocation")
	public String openafterRegisterServiceProviderLocation()
	{
		return "registerServiceProvider";
	}
	
	
	
	@RequestMapping("/registerServiceProvider")
	public String openregisterServiceProvider()
	{
		return "spLocation";
	}
	@RequestMapping("/serviceProviderDashboard")
	public String openserviceProviderDashboard()
	{
		return "serviceProviderDashboard";
	}
	@RequestMapping("/afterServiceProviderLogin")
	public String openAfterServiceProviderLogin()
	{
		
		 
		return "registerServiceProvider";
	}
	
	
	@RequestMapping(value = "/afterRegisterServiceProvider", method = RequestMethod.POST)
    public String openafterRegisterServiceProvider(@ModelAttribute ServiceProvider serviceProvider) {
        
		 System.out.println("Received ServiceProvider: " + serviceProvider);
       serviceProviderDao.registerServiceProvider(serviceProvider);

       // Redirect to a success page or another appropriate view
        return "index";
   }
	
	


    @RequestMapping(value = "/afterServiceProviderLogin", method = RequestMethod.POST)
    public String afterServiceProviderLogin(ServiceProvider serviceProvider, Model model,HttpServletRequest request,HttpSession session) {
        // Fetch data from the JSP form attributes
        int serviceProviderId = serviceProvider.getSid();
        String password = serviceProvider.getSpassword();
        

        ServiceProvider sp=serviceProviderDao.getObject(serviceProviderId);
        session.setAttribute("spObj", sp);
        session.setAttribute("sId", "serviceProviderId");
        // Validate using the DAO
        boolean loginSuccessful = serviceProviderDao.validateServiceProviderLogin(serviceProviderId, password);

        if (loginSuccessful) {
            // Add logic to redirect to a success page or perform other actions
            return "redirect:/serviceProviderDashboard";
        } else {
            // Add logic to handle unsuccessful login
            model.addAttribute("error", "Invalid credentials");
            return "serviceProviderLogin"; // Redirect back to the login page with an error message
        }
    }

    
    
      
    
     
    
     
    
    
    
    //////////Service provider panel
    
    
    
    
    
    @RequestMapping("/viewMyAllServiceProvider")
	public String viewAllServiceProviders(Model model,HttpSession session) {
        //String sId = (String) session.getAttribute("sId");
    	//String sId="1001";
    	ServiceProvider sp=(ServiceProvider) session.getAttribute("spObj");
    	String sId=String.valueOf(sp.getSid());
        System.out.println(sId);
    	List<Orders> orders = ordersDao.getAllOrders(sId);
    	System.out.println("Hari");
    	System.out.println(orders);
	    model.addAttribute("orders", orders);
	    
	    return "viewMyAllServiceProvider";
	}
    
    
    @RequestMapping("/viewMyApprovedServiceProvider")
   	public String viewviewMyApprovedServiceProvider(Model model,HttpSession session) {
           //String sId = (String) session.getAttribute("sId");
       	//String sId="1001";
       	ServiceProvider sp=(ServiceProvider) session.getAttribute("spObj");
       	String sId=String.valueOf(sp.getSid());
           System.out.println(sId);
       	List<Orders> orders = ordersDao.getAllOrders(sId);
       	System.out.println("Hari");
       	System.out.println(orders);
   	    model.addAttribute("orders", orders);
   	    
   	    return "viewMyApprovedServiceProvider";
   	}
	
    
    
    @RequestMapping("/viewMyPendingServiceProvider")
   	public String viewMyPendingServiceProvider(Model model,HttpSession session) {
           //String sId = (String) session.getAttribute("sId");
       	//String sId="1001";
       	ServiceProvider sp=(ServiceProvider) session.getAttribute("spObj");
       	String sId=String.valueOf(sp.getSid());
           System.out.println(sId);
       	List<Orders> orders = ordersDao.getAllOrders(sId);
       	System.out.println("Hari");
       	System.out.println(orders);
   	    model.addAttribute("orders", orders);
   	    
   	    return "viewMyPendingServiceProvider";
   	}
    
    @RequestMapping("/viewMyDisapprovedServiceProvider")
   	public String viewMyDisapprovedServiceProvider(Model model,HttpSession session) {
           //String sId = (String) session.getAttribute("sId");
       	//String sId="1001";
       	ServiceProvider sp=(ServiceProvider) session.getAttribute("spObj");
       	String sId=String.valueOf(sp.getSid());
           System.out.println(sId);
       	List<Orders> orders = ordersDao.getAllOrders(sId);
       	System.out.println("Hari");
       	System.out.println(orders);
   	    model.addAttribute("orders", orders);
   	    
   	    return "viewMyDisapprovedServiceProvider";
   	}
    
    @RequestMapping("/viewMyTodaysServiceProvider")
   	public String viewMyTodaysServiceProvider(Model model,HttpSession session) {
           //String sId = (String) session.getAttribute("sId");
       	//String sId="1001";
       	ServiceProvider sp=(ServiceProvider) session.getAttribute("spObj");
       	String sId=String.valueOf(sp.getSid());
           System.out.println(sId);
       	List<Orders> orders = ordersDao.getAllOrders(sId);
       	System.out.println("Hari");
       	System.out.println(orders);
   	    model.addAttribute("orders", orders);
   	    
   	    return "viewMyTodaysServiceProvider";
   	}
    
    
    @RequestMapping("/viewMy7DaysServiceProvider")
   	public String viewMy7DaysServiceProvider(Model model,HttpSession session) {
           //String sId = (String) session.getAttribute("sId");
       	//String sId="1001";
       	ServiceProvider sp=(ServiceProvider) session.getAttribute("spObj");
       	String sId=String.valueOf(sp.getSid());
           System.out.println(sId);
       	List<Orders> orders = ordersDao.getAllOrders(sId);
       	System.out.println("Hari");
       	System.out.println(orders);
   	    model.addAttribute("orders", orders);
   	    
   	    return "viewMy7DaysServiceProvider";
   	}
    
    @RequestMapping(path = "/approvedService/{oId}", method = RequestMethod.GET)
	public RedirectView update(@PathVariable("oId") int oId, HttpServletRequest request) {
		ordersDao.updateApprove(oId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/viewMyAllServiceProvider");
		return redirectview;
		         
	}
    
    @RequestMapping(path = "/disapprovedService/{oId}", method = RequestMethod.GET)
   	public RedirectView updateDis(@PathVariable("oId") int oId, HttpServletRequest request) {
   		ordersDao.updateDisapprove(oId);
   		RedirectView redirectview = new RedirectView();
   		redirectview.setUrl(request.getContextPath() + "/viewMyAllServiceProvider");
   		return redirectview;
   		         
   	}
    
    @RequestMapping(path = "/pendingService/{oId}", method = RequestMethod.GET)
   	public RedirectView updatePending(@PathVariable("oId") int oId, HttpServletRequest request) {
   		ordersDao.updatePending(oId);
   		RedirectView redirectview = new RedirectView();
   		redirectview.setUrl(request.getContextPath() + "/viewMyAllServiceProvider");
   		return redirectview;
   		         
   	}
//    
	
    
  
}
















 