package it.ariadne.booking.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import it.ariadne.booking.dao.ResourceDAO;
import it.ariadne.booking.entity.Car;

@Component
public class DataInit implements ApplicationRunner {

	private ResourceDAO resourceDAO;
	
	@Autowired
    public DataInit(ResourceDAO resourceDAO) {
        this.resourceDAO = resourceDAO;
    }

	@Override
	public void run(ApplicationArguments args) throws Exception {
		long count = resourceDAO.count();
		
		if (count == 0) {
			Car car1 = new Car();
			car1.setType("car");
			car1.setName("AA 111 AA");
			car1.setConstraint(5);
			
			Car car2 = new Car();
			car2.setType("car");
			car2.setName("AA 222 AA");
			car2.setConstraint(5);
			
			Car car3 = new Car();
			car3.setType("car");
			car3.setName("AA 333 AA");
			car3.setConstraint(5);
			
			
			resourceDAO.save(car1);
			resourceDAO.save(car2);
			resourceDAO.save(car3);
		}
		
	}

}
