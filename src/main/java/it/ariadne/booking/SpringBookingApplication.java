package it.ariadne.booking;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan({"it.ariadne.booking"})
@EntityScan("it.ariadne.booking.entity")
@EnableJpaRepositories("it.ariadne.booking.dao")
public class SpringBookingApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBookingApplication.class, args);
	}
}
