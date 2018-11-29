package it.ariadne.booking.entity;

public interface Resource {

	Long getId();
    void setId(Long id);
	
    String getType();
	void setType(String type);
    
	String getName();
	void setName(String name);
	
	int getConstraint();
	void setConstraint(int constraint);
}
