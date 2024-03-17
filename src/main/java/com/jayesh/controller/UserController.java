package com.jayesh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.jayesh.dao.UserDao;
import com.jayesh.dao.OrdersDao;
import com.jayesh.dao.ServiceProviderDao;
import com.jayesh.model.ServiceProvider;

import com.jayesh.model.User;
import com.jayesh.model.Orders;

@Controller
public class UserController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	User user = (User) context.getBean("user");
	UserDao userDao = (UserDao) context.getBean("userDao");
	ServiceProviderDao serviceProviderDao = (ServiceProviderDao) context.getBean("serviceProviderDao");

	Orders orders=(Orders) context.getBean("orders");
	OrdersDao ordersDao=(OrdersDao) context.getBean("ordersDao");
	@RequestMapping("/userLogin")
	public String openUserLogin()
	{
		return "userLogin";
	}
	
	@RequestMapping("/registerUser")
	public String openregisterServiceProvider()
	{
		return "userLocation";
	}
	
	@RequestMapping("/afterUserLogin")
	public String openafterUserLogin()
	{
		return "userLogin";
	}
	
	@RequestMapping("/afterRegisterUserLocation")
	public String openafterRegisterUserLocation()
	{
		return "userRegister";
	}
	
	@RequestMapping("/afterUserRegister")
	public String openafterUserRegiste()
	{
		return "userRegister";
	}
	
	@RequestMapping("/userDashboard")
	public String openuserDashboard(HttpSession session)
	{
		return "userDashboard";
	}
	
	@RequestMapping(value = "/afterUserRegister", method = RequestMethod.POST)
    public String openafterUserRegister(@ModelAttribute User user) {
        
	    System.out.println("Received ServiceProvider: " + user);
        userDao.registeUser(user);

       // Redirect to a success page or another appropriate view
        return "index";
   }
	
	@RequestMapping("/scheduleService")
	public String openScheduleServiceUser(HttpSession session)
	{
		return "scheduleService";
	}
	
	@RequestMapping("/scheduleServiceFinal")
	public String openScheduleServiceUser1(HttpSession session)
	{
		return "scheduleServiceFinal";
	}
	
	
	
    @RequestMapping(value = "/afterUserLogin", method = RequestMethod.POST)
    public String afterUserLogin(User user, Model model,HttpServletRequest request,HttpSession session) {
        // Fetch data from the JSP form attributes
        String uid = user.getUid();
        String password = user.getUpassword();
        

        User user1=userDao.getObject(uid);
        session.setAttribute("uObj", user1);
        
        // Validate using the DAO
        boolean loginSuccessful = userDao.validateUserLogin(uid, password);

        if (loginSuccessful) {
            // Add logic to redirect to a success page or perform other actions
            return "redirect:/userDashboard";
        } else {
            // Add logic to handle unsuccessful login
            model.addAttribute("error", "Invalid credentials");
            return "userLogin"; // Redirect back to the login page with an error message
        }
    }
	 
    
    
   
    @PostMapping("/scheduleServiceAfterSelection")
    public String openscheduleServiceAfterSelection(
            @RequestParam("scategory") String selectedCategory,
            @RequestParam("sServiceType") String selectedServiceType,
            HttpSession session
    ) {
    	List<ServiceProvider> serviceProvider=serviceProviderDao.findCustomByCategoryAndType(selectedCategory,selectedServiceType);
         // Set attributes in session
        session.setAttribute("selectedCategory", selectedCategory);
        session.setAttribute("selectedServiceType", selectedServiceType);
        session.setAttribute("serviceProvider", serviceProvider);

        return "scheduleServiceAfterSelectionBook";
    }
    
    
     
//  @RequestMapping(path = "/confirmedService/{sId}", method = RequestMethod.GET)
// public String update(@PathVariable("sId") int sId, HttpServletRequest request,HttpSession session) {
// 		ServiceProvider spObj=serviceProviderDao.getObject(sId);
// 		session.setAttribute("spObj", spObj);
// 		return "scheduleServiceFinal";
// 		//RedirectView redirectview = new RedirectView();
// 		//redirectview.setUrl(request.getContextPath() + "/scheduleServiceFinal");
// 		//return redirectview;
// 	}	
//    
 
    @RequestMapping(path = "/confirmedService/{sId}", method = RequestMethod.GET)
    public RedirectView update(@PathVariable("sId") int sId, RedirectAttributes attributes,HttpSession session) {
        ServiceProvider spObj = serviceProviderDao.getObject(sId);

        // Set the attribute to be accessed in the redirected URL
       // attributes.addFlashAttribute("spObj", spObj);

        session.setAttribute("spObj", spObj);
        // Redirect directly to "/scheduleServiceFinal"
        RedirectView redirectView = new RedirectView("/scheduleServiceFinal", true);
        return redirectView;
    }
  
  @RequestMapping(value = "/afterServiceBooked", method = RequestMethod.POST)
  public String afterafterServiceBooked(@ModelAttribute Orders orders,
		  HttpServletRequest request,HttpSession session) 
  {
	
	ordersDao.bookOrder(orders);
	return "userDashboard";
	  
  }
  
  
  
  
  
  @RequestMapping("/viewMyApprovedUser")
	public String openviewMyApprovedUser(HttpSession session)
	{
	  User user=(User)session.getAttribute("uObj");
	  System.out.println(user);
	  List<Orders> orders=userDao.findOrdersByEmailAndContact(user.getUemail(),user.getUmob());
	  System.out.println(orders);
	  session.setAttribute("orders", orders);
		return "viewMyApprovedUser";
	}
  
  
  @RequestMapping("/viewMyDisapprovedUser")
	public String openviewMyDispprovedUser(HttpSession session)
	{
	  User user=(User)session.getAttribute("uObj");
	  System.out.println(user);
	  List<Orders> orders=userDao.findOrdersByEmailAndContact(user.getUemail(),user.getUmob());
	  System.out.println(orders);
	  session.setAttribute("orders", orders);
		return "viewMyDisapprovedUser";
	}
	
  
  @RequestMapping("/viewMyPendingUser")
	public String openviewMyPendingUser(HttpSession session)
	{
	  User user=(User)session.getAttribute("uObj");
	  System.out.println(user);
	  List<Orders> orders=userDao.findOrdersByEmailAndContact(user.getUemail(),user.getUmob());
	  System.out.println(orders);
	  session.setAttribute("orders", orders);
		return "viewMyPendingUser";
	}
	
  
  @RequestMapping("/viewMyAllUser")
	public String openviewMyAllUser(HttpSession session)
	{
	  User user=(User)session.getAttribute("uObj");
	  System.out.println(user);
	  List<Orders> orders=userDao.findOrdersByEmailAndContact(user.getUemail(),user.getUmob());
	  System.out.println(orders);
	  session.setAttribute("orders", orders);
		return "viewMyAllUser";
	}
	
	
}
