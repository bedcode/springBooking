package it.ariadne.booking.controller;

import java.security.Principal;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import it.ariadne.booking.dao.ResourceDAO;
import it.ariadne.booking.entity.Resource;
import it.ariadne.booking.entity.ResourceEnum;
import it.ariadne.booking.utils.TableResponse;
import it.ariadne.booking.utils.WebUtils;

@Controller
public class MainController {
 
	@Autowired
	ResourceDAO resourceDAO;
	
	@Autowired
	TableResponse tableResponse;
	
	@RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
	public String loginPage(Model model) {
		model.addAttribute("title", "Login");
		return "loginPage";
	}
	
	@RequestMapping(value = {"/403"}, method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {

		if (principal != null) {
			User loginedUser = (User) ((Authentication) principal).getPrincipal();

			String userInfo = WebUtils.toString(loginedUser);

			model.addAttribute("title", "403");
			model.addAttribute("userInfo", userInfo);

			String message = "Hi " + principal.getName() //
					+ "<br> You do not have permission to access this page!";
			model.addAttribute("message", message);
		}

		return "403Page";
	}
	
    @RequestMapping(value = { "/admin/index" }, method = RequestMethod.GET)
	public String homePage(Model model) {
		return "indexPage";
	}
    
    @RequestMapping(value = { "/admin/addResource" }, method = RequestMethod.GET)
	public String addResourcePage(Model model) {
		return "addResourcePage";
	}
    
    @RequestMapping(value = { "/admin/resource" }, method = RequestMethod.GET)
	public String resourcePage(Model model) {
		return "resourcePage";
	}
     
    @RequestMapping(value = { "/admin/bookings" }, method = RequestMethod.GET)
	public String bookingsPage(Model model) {
		return "bookingsPage";
	}
    
    @ResponseBody
    @RequestMapping(value = { "/admin/resourcelist" }, method = RequestMethod.GET)
	public TableResponse index(Model model) {
		ArrayList<Resource> all = (ArrayList<Resource>) resourceDAO.findAll();
		tableResponse.setDraw(0);
		tableResponse.setRecordsTotal(all.size());
		tableResponse.setRecordsFiltered(all.size());
		tableResponse.setData(all);

		return tableResponse;
	}
    
    
    @RequestMapping(value = { "/user/index" }, method = RequestMethod.GET)
	public String homeUserPage(Model model) {
		return "indexUserPage";
	}
    
    @RequestMapping(value = { "/user/findAvailability" }, method = RequestMethod.GET)
	public String findAvailabilityPage(Model model) {
		return "findAvailabilityPage";
	}
    
    @RequestMapping(value = { "/user/addBooking" }, method = RequestMethod.GET)
	public String addBookingPage(Model model) {
		return "addBookingPage";
	}
     
    @RequestMapping(value = { "/user/bookings" }, method = RequestMethod.GET)
	public String bookingsUserPage(Model model) {
		return "bookingsUserPage";
	}
}
