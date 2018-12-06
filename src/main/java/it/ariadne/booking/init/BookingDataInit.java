package it.ariadne.booking.init;

import java.util.Optional;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import it.ariadne.booking.dao.AppUserDAO;
import it.ariadne.booking.dao.BookingDAO;
import it.ariadne.booking.dao.ResourceDAO;
import it.ariadne.booking.entity.AppUser;
import it.ariadne.booking.entity.Booking;
import it.ariadne.booking.entity.Resource;

@Component
public class BookingDataInit implements ApplicationRunner {

	private BookingDAO bookingDAO;
	private AppUserDAO appUserDAO;
	private ResourceDAO resourceDAO;

	@Autowired
	public BookingDataInit(BookingDAO bookingDAO, AppUserDAO appUserDAO, ResourceDAO resourceDAO) {
		this.bookingDAO = bookingDAO;
		this.appUserDAO = appUserDAO;
		this.resourceDAO = resourceDAO;
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {
		long count = bookingDAO.count();

		if (count == 0) {
			Booking b1 = new Booking();
 			DateTime start = new DateTime(2018, 11, 12, 14, 00);
        	b1.setStartDate(start.toDate());
        	DateTime end = new DateTime(2018, 11, 12, 16, 00);
 	    	b1.setEndDate(end.toDate());
			Long id = Long.valueOf(12);
			Optional<Resource> r = resourceDAO.findById(id);
			b1.setResource(r.get());
			AppUser appUser = appUserDAO.findUserAccount("dbuser1");
			b1.setAppUser(appUser);

			bookingDAO.save(b1);
		}

	}

}
