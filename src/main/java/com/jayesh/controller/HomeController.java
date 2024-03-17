package com.jayesh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.jayesh.dao.AccountDao;
//import com.jayesh.model.Account;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.jayesh.dao.ServiceProviderDao;
 
import com.jayesh.model.ServiceProvider;
import com.jayesh.model.User;

@Controller
public class HomeController {


	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	ServiceProvider serviceProvider = (ServiceProvider) context.getBean("serviceProvider");
	ServiceProviderDao serviceProviderDao = (ServiceProviderDao) context.getBean("serviceProviderDao");
//	Account account = (Account) context.getBean("account");
//	AccountDao accountDao = (AccountDao) context.getBean("accountDao");
	
	@RequestMapping("/")
	public String openIndexPage()
	{
		return "index";
	}
	 
	
	@RequestMapping("/index")
	public String openIndexPage1(HttpSession session)
	{
		//System.out.println(((User) session.getAttribute("uObj")).getUname());
		return "index";
	}
	@RequestMapping("/adminLogin")
	public String openAdminLogin()
	{
		return "adminLogin";
	
	}
	
	@RequestMapping("/adminDashboard")
	public String openAdminDashboard()
	{
		return "adminDashboard";
	}
	
	
 
	@RequestMapping(path="/afterAdminLogin",method=RequestMethod.POST)
	public String checkLogin(Model m,HttpServletRequest request)
	{
		String email = request.getParameter("aemail");
		String password = request.getParameter("apassword");
		if(email.equals("admin@gmail.com") &&
				password.equals("admin"))
		{
			m.addAttribute("uemail",email);
			m.addAttribute("upassword", password);
			return "adminDashboard";
		}
		else
		{
			return "error";
		}
	}
	
	@RequestMapping("/viewAllServiceProviders")
	public String viewAllServiceProviders(Model model) {
	    List<ServiceProvider> serviceProviders = serviceProviderDao.getAllServiceProviders();
	    model.addAttribute("serviceProviderList", serviceProviders);
	    return "viewAllServiceProviders";
	}
	@RequestMapping(path = "/approved/{sId}", method = RequestMethod.GET)
	public RedirectView update(@PathVariable("sId") int sId, HttpServletRequest request) {
		serviceProviderDao.update(sId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/approvedServiceProvider");
		return redirectview;
	}
	

	@RequestMapping(path = "/pending/{sId}", method = RequestMethod.GET)
	public RedirectView update1(@PathVariable("sId") int sId, HttpServletRequest request) {
		serviceProviderDao.updatePending(sId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/pendingServiceProvider");
		return redirectview;
	}
	
	@RequestMapping(path = "/disapproved/{sId}", method = RequestMethod.GET)
	public RedirectView updateDisapproved(@PathVariable("sId") int sId, HttpServletRequest request) {
		serviceProviderDao.updateDisapproved(sId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/disapprovedServiceProvider");
		return redirectview;
	}
	
	@RequestMapping(path = "/remove/{sId}", method = RequestMethod.GET)
	public RedirectView updateRemove(@PathVariable("sId") int sId, HttpServletRequest request) {
		serviceProviderDao.updateRemove(sId);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/removeServiceProvider");
		return redirectview;
	}
	
	
	 
	@RequestMapping("/viewRequestServiceProvider")
	public String openApprovedServiceProvider(Model model)
	{
		List<ServiceProvider> serviceProvider = serviceProviderDao.getAllAccounts();
	    model.addAttribute("serviceProvider", serviceProvider);
	      //this goes to that jsp page 
		return "approvedServiceProvider";
	}

	@RequestMapping("/pendingServiceProvider")
	public String openPendingServiceProvider(Model model)
	{
		List<ServiceProvider> serviceProvider = serviceProviderDao.getAllAccounts();
	    model.addAttribute("serviceProvider", serviceProvider);
	      //this goes to that jsp page 
	    
		return "pendingServiceProvider";
	}
	
	@RequestMapping("/disapprovedServiceProvider")
	public String openDisapprovedServiceProvider(Model model)
	{
		List<ServiceProvider> serviceProvider = serviceProviderDao.getAllAccounts();
	    model.addAttribute("serviceProvider", serviceProvider);
	      //this goes to that jsp page 
	    
		 
		return "disapprovedServiceProvider";
	}
	
	@RequestMapping("/approvedServiceProvider")
	public String openApprovedServiceProvider1(Model model)
	{
		List<ServiceProvider> serviceProvider = serviceProviderDao.getAllAccounts();
	    model.addAttribute("serviceProvider", serviceProvider);
	      //this goes to that jsp page 
	    
		 
		return "approvedServiceProvider";
	}
	
	
	@RequestMapping("/removeServiceProvider")
	public String openRemoveServiceProvider(Model model)
	{
		List<ServiceProvider> serviceProvider = serviceProviderDao.getAllAccounts();
	    model.addAttribute("serviceProvider", serviceProvider);
	      //this goes to that jsp page 
	    
		 
		return "removeServiceProvider";
	}
	
	 
}

