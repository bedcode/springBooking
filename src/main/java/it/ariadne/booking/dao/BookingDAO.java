package it.ariadne.booking.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.booking.entity.Booking;

@Repository
public interface BookingDAO extends CrudRepository<Booking, Long> {
	
}
