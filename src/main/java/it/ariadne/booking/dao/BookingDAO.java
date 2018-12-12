package it.ariadne.booking.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.booking.entity.AppUser;
import it.ariadne.booking.entity.Booking;
import it.ariadne.booking.entity.Resource;

@Repository
public interface BookingDAO extends CrudRepository<Booking, Long> {
	public List<Booking> findByAppUser(AppUser appUser);
	public List<Booking> findByAppUserAndStartDateGreaterThanEqual(AppUser appUser, Date start);
	public List<Booking> findByAppUserAndStartDateLessThan(AppUser appUser, Date start);
	public List<Booking> findByResource(Resource resource);
}
