package it.ariadne.booking.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import it.ariadne.booking.dao.ResourceDAO;
import it.ariadne.booking.entity.Resource;
import it.ariadne.booking.entity.ResourceEnum;

@Component
public class ResourceDataInit implements ApplicationRunner {

	private ResourceDAO resourceDAO;
	
	@Autowired
    public ResourceDataInit(ResourceDAO resourceDAO) {
        this.resourceDAO = resourceDAO;
    }

	@Override
	public void run(ApplicationArguments args) throws Exception {
		long count = resourceDAO.count();
		
		if (count == 0) {
			Resource car1 = new Resource();
			car1.setType(ResourceEnum.AUTO);
			car1.setName("AA 111 AA");
			car1.setBoundary(5);
			
			Resource car2 = new Resource();
			car2.setType(ResourceEnum.AUTO);
			car2.setName("AA 222 AA");
			car2.setBoundary(5);
			
			Resource car3 = new Resource();
			car3.setType(ResourceEnum.AUTO);
			car3.setName("AA 333 AA");
			car3.setBoundary(5);
			
			Resource classroom1 = new Resource();
			classroom1.setType(ResourceEnum.AULA);
			classroom1.setName("EF1");
			classroom1.setBoundary(200);
			
			Resource classroom2 = new Resource();
			classroom2.setType(ResourceEnum.AULA);
			classroom2.setName("EF2");
			classroom2.setBoundary(150);
			
			Resource computer1 = new Resource();
			computer1.setType(ResourceEnum.COMPUTER);
			computer1.setName("HP");
			computer1.setBoundary(8);
			
			Resource computer2 = new Resource();
			computer2.setType(ResourceEnum.COMPUTER);
			computer2.setName("Dell");
			computer2.setBoundary(16);
			
			resourceDAO.save(car1);
			resourceDAO.save(car2);
			resourceDAO.save(car3);
			resourceDAO.save(classroom1);
			resourceDAO.save(classroom2);
			resourceDAO.save(computer1);
			resourceDAO.save(computer2);
		}
		
	}

}
