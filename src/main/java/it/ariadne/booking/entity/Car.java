package it.ariadne.booking.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RESOURCE")
public class Car implements Resource {

	@Id
    @GeneratedValue
    @Column(name = "Id", nullable = false)
    private Long id;

	@Column(name = "Type", length=64, nullable = false)
	private String type;

	@Column(name = "Name", length=64, nullable = false)
	private String name;

	@Column(name = "Seats", nullable = false)
	private int seats;

	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(Long id) {
		this.id = id;
	}
	
	@Override
	public String getType() {
		return type;
	}

	@Override
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String getName() {
		return name;
	}

	@Override
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public int getConstraint() {
		return seats;
	}

	@Override
	public void setConstraint(int constraint) {
		this.seats = constraint;
	}
}
