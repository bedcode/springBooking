package it.ariadne.booking;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ServletComponentScan(basePackages = { "it.ariadne.booking" })
public class SpringBookingApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBookingApplication.class, args);
	}
}
