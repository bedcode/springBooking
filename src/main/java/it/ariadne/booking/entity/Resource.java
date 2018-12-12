package it.ariadne.booking.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RESOURCE")
public class Resource {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Resource_Id", nullable = false)
    private Long id;

	@Column(name = "Type", length=64, nullable = false)
	private ResourceEnum type;

	@Column(name = "Name", length=64, nullable = false)
	private String name;

	@Column(name = "Boundary", nullable = false)
	private int boundary;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public ResourceEnum getType() {
		return type;
	}

	public void setType(ResourceEnum type) {
		this.type = type;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBoundary() {
		return boundary;
	}

	public void setBoundary(int boundary) {
		this.boundary = boundary;
	}
}
