package it.ariadne.booking.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import it.ariadne.booking.dao.AppUserDAO;
import it.ariadne.booking.dao.BookingDAO;
import it.ariadne.booking.dao.ResourceDAO;
import it.ariadne.booking.entity.AppUser;
import it.ariadne.booking.entity.Booking;
import it.ariadne.booking.entity.BookingPrinter;
import it.ariadne.booking.entity.Resource;
import it.ariadne.booking.entity.ResourceEnum;
import it.ariadne.booking.utils.TableResponse;
import it.ariadne.booking.utils.WebUtils;

@Controller
public class MainController {

	@Autowired
	ResourceDAO resourceDAO;
	@Autowired
	BookingDAO bookingDAO;
	@Autowired
	AppUserDAO appUserDAO;

	@Autowired
	TableResponse<Resource> tableResource;
	@Autowired
	TableResponse<BookingPrinter> tableBooking;

	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public String loginPage(Model model) {
		model.addAttribute("title", "Login");
		return "loginPage";
	}

	@RequestMapping(value = { "/403" }, method = RequestMethod.GET)
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

	@RequestMapping(value = { "/admin/editResource" }, method = RequestMethod.GET)
	public String editResourcePage(Model model) {
		return "editResourcePage";
	}

	@RequestMapping(value = { "/admin/bookings" }, method = RequestMethod.GET)
	public String bookingsPage(Model model) {
		return "bookingsPage";
	}

	@ResponseBody
	@RequestMapping(value = { "/admin/resourcelist" }, method = RequestMethod.GET)
	public TableResponse<Resource> resourceTable(Model model) {
		ArrayList<Resource> resources = (ArrayList<Resource>) resourceDAO.findAll();
		tableResource.setDraw(0);
		tableResource.setRecordsTotal(resources.size());
		tableResource.setRecordsFiltered(resources.size());
		tableResource.setData(resources);

		return tableResource;
	}

	@RequestMapping(value = { "/admin/addResourceDB" }, method = RequestMethod.POST)
	public String addResourceDB(Model model, HttpServletRequest request) {
		Resource r = new Resource();
		r.setName(request.getParameter("name"));
		r.setType(ResourceEnum.valueOf(request.getParameter("type").toUpperCase()));
		r.setBoundary(Integer.parseInt((request.getParameter("boundary"))));
		resourceDAO.save(r);
		return "resourcePage";
	}

	@RequestMapping(value = { "/admin/editResourceDB" }, method = RequestMethod.POST)
	public String editResourceDB(Model model, HttpServletRequest request) {
		Long id = Long.valueOf((request.getParameter("id")));
		Optional<Resource> r = resourceDAO.findById(id);
		if (r.isPresent()) {
			int newBoundary = Integer.parseInt(request.getParameter("boundary"));
			System.out.println(newBoundary);
			r.get().setBoundary(newBoundary);
			resourceDAO.save(r.get());
			return "resourcePage";
		} else {
			String error = "ID non esistente";
			model.addAttribute("editError", error);
			return "editResourcePage";
		}
	}

	@RequestMapping(value = { "/admin/deleteResourceDB" }, method = RequestMethod.POST)
	public String deleteResourceDB(Model model, HttpServletRequest request) {
		Long id = Long.valueOf((request.getParameter("id")));
		if (resourceDAO.existsById(id)) {
			resourceDAO.deleteById(id);
			return "resourcePage";
		} else {
			String error = "ID non esistente";
			model.addAttribute("deleteError", error);
			return "editResourcePage";
		}
	}

	@ResponseBody
	@RequestMapping(value = { "/admin/bookinglist" }, method = RequestMethod.GET)
	public TableResponse<BookingPrinter> bookingTable(Model model) {
		ArrayList<Booking> bookings = (ArrayList<Booking>) bookingDAO.findAll();
		List<BookingPrinter> bookingPrinter = new ArrayList<>();
		tableBooking.setDraw(0);
		tableBooking.setRecordsTotal(bookings.size());
		tableBooking.setRecordsFiltered(bookings.size());
		for (Booking booking : bookings) {
			BookingPrinter b = new BookingPrinter();
			b.setId(booking.getId());
			b.setStartDate(booking.getStartDate());
			b.setEndDate(booking.getEndDate());
			b.setResource(booking.getResource().getName());
			b.setAppUser(booking.getAppUser().getUserName());
			bookingPrinter.add(b);
		}
		tableBooking.setData(bookingPrinter);

		return tableBooking;
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

	@RequestMapping(value = { "/user/deleteBooking" }, method = RequestMethod.GET)
	public String deleteBookingPage(Model model) {
		return "deleteBookingPage";
	}

	@RequestMapping(value = { "/user/deleteBookingDB" }, method = RequestMethod.POST)
	public String deleteBookingDB(Model model, HttpServletRequest request, Principal principal) {
		Long id = Long.valueOf((request.getParameter("id")));
		String userName = principal.getName();
		Optional<Booking> b = bookingDAO.findById(id);
		if (b.isPresent()) {
			if (b.get().getAppUser().getUserName().equals(userName)) {
				bookingDAO.deleteById(id);
				return "bookingsUserPage";
			} else {
				String error = "Prenotazioni non eliminata, controlla l'ID";
				model.addAttribute("deleteError", error);
				return "deleteBookingPage";
			}
		} else {
			String error = "Prenotazioni non eliminata, controlla l'ID";
			model.addAttribute("deleteError", error);
			return "deleteBookingPage";
		}
	}

	@RequestMapping(value = { "/user/bookings" }, method = RequestMethod.GET)
	public String bookingsUserPage(Model model) {
		return "bookingsUserPage";
	}

	@RequestMapping(value = { "/user/futureBookings" }, method = RequestMethod.GET)
	public String futureBookingsUserPage(Model model) {
		return "futureBookingsPage";
	}

	@RequestMapping(value = { "/user/historyBookings" }, method = RequestMethod.GET)
	public String historyBookingsUserPage(Model model) {
		return "historyBookingsPage";
	}

	@ResponseBody
	@RequestMapping(value = { "/user/bookinglist" }, method = RequestMethod.GET)
	public TableResponse<BookingPrinter> bookingUserTable(Model model, Principal principal) {
		String userName = principal.getName();
		AppUser appUser = appUserDAO.findUserAccount(userName);

		ArrayList<Booking> bookings = (ArrayList<Booking>) bookingDAO.findByAppUser(appUser);
		List<BookingPrinter> bookingPrinter = new ArrayList<>();
		tableBooking.setDraw(0);
		tableBooking.setRecordsTotal(bookings.size());
		tableBooking.setRecordsFiltered(bookings.size());
		for (Booking booking : bookings) {
			BookingPrinter b = new BookingPrinter();
			b.setId(booking.getId());
			b.setStartDate(booking.getStartDate());
			b.setEndDate(booking.getEndDate());
			b.setResource(booking.getResource().getName());
			b.setAppUser(booking.getAppUser().getUserName());
			bookingPrinter.add(b);
		}
		tableBooking.setData(bookingPrinter);

		return tableBooking;
	}

	@ResponseBody
	@RequestMapping(value = { "/user/futureBookinglist" }, method = RequestMethod.GET)
	public TableResponse<BookingPrinter> futureBookingUserTable(Model model, Principal principal) {
		String userName = principal.getName();
		AppUser appUser = appUserDAO.findUserAccount(userName);

		Date start = new Date();
		ArrayList<Booking> bookings = (ArrayList<Booking>) bookingDAO.findByAppUserAndStartDateGreaterThanEqual(appUser,
				start);
		List<BookingPrinter> bookingPrinter = new ArrayList<>();
		tableBooking.setDraw(0);
		tableBooking.setRecordsTotal(bookings.size());
		tableBooking.setRecordsFiltered(bookings.size());
		for (Booking booking : bookings) {
			BookingPrinter b = new BookingPrinter();
			b.setId(booking.getId());
			b.setStartDate(booking.getStartDate());
			b.setEndDate(booking.getEndDate());
			b.setResource(booking.getResource().getName());
			b.setAppUser(booking.getAppUser().getUserName());
			bookingPrinter.add(b);
		}
		tableBooking.setData(bookingPrinter);

		return tableBooking;
	}

	@ResponseBody
	@RequestMapping(value = { "/user/historyBookinglist" }, method = RequestMethod.GET)
	public TableResponse<BookingPrinter> historyBookingUserTable(Model model, Principal principal) {
		String userName = principal.getName();
		AppUser appUser = appUserDAO.findUserAccount(userName);

		Date start = new Date();
		ArrayList<Booking> bookings = (ArrayList<Booking>) bookingDAO.findByAppUserAndStartDateLessThan(appUser, start);
		List<BookingPrinter> bookingPrinter = new ArrayList<>();
		tableBooking.setDraw(0);
		tableBooking.setRecordsTotal(bookings.size());
		tableBooking.setRecordsFiltered(bookings.size());
		for (Booking booking : bookings) {
			BookingPrinter b = new BookingPrinter();
			b.setId(booking.getId());
			b.setStartDate(booking.getStartDate());
			b.setEndDate(booking.getEndDate());
			b.setResource(booking.getResource().getName());
			b.setAppUser(booking.getAppUser().getUserName());
			bookingPrinter.add(b);
		}
		tableBooking.setData(bookingPrinter);

		return tableBooking;
	}
}
