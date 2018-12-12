package it.ariadne.booking.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import it.ariadne.booking.entity.Resource;

@Repository
public interface ResourceDAO extends CrudRepository<Resource, Long> {
	 public List<Resource> findByNameLike(String name);
	
}
