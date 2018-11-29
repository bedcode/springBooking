package it.ariadne.booking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.booking.entity.Car;

@Repository
public interface ResourceDAO extends CrudRepository<Car, Long> {
	 public List<Car> findByNameLike(String name);
	
}
