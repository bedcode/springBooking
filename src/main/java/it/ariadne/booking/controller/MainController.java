package it.ariadne.booking.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import it.ariadne.booking.dao.ResourceDAO;
import it.ariadne.booking.entity.Car;
import it.ariadne.booking.utils.TableResponse;

@Controller
public class MainController {
 
	@Autowired
	ResourceDAO resourceDAO;
	
	@Autowired
	TableResponse tableResponse;
	
    @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public String homePage(Model model) {
		return "indexPage";
	}
    
    @RequestMapping(value = { "/addResource" }, method = RequestMethod.GET)
	public String addResourcePage(Model model) {
		return "addResourcePage";
	}
    
    @RequestMapping(value = { "/resource" }, method = RequestMethod.GET)
	public String resourcePage(Model model) {
		return "resourcePage";
	}
     
    @RequestMapping(value = { "/bookings" }, method = RequestMethod.GET)
	public String bookingsPage(Model model) {
		return "bookingsPage";
	}
    
    @ResponseBody
    @RequestMapping(value = { "/resourcelist" }, method = RequestMethod.GET)
	public TableResponse index() {
		ArrayList<Car> all = (ArrayList<Car>) resourceDAO.findAll();
		tableResponse.setDraw(0);
		tableResponse.setRecordsTotal(all.size());
		tableResponse.setRecordsFiltered(all.size());
		tableResponse.setData(all);

		return tableResponse;
	}
}
