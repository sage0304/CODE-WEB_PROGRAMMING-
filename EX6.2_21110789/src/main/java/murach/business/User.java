package murach.business;

import java.io.Serializable;

public class User implements Serializable { 
	private String email;
    private String firstName; 
    private String lastName;
    private String dateofBirth;
    private String heardFrom;
    private String ann;
    private String contact;
    
    public User() {
    	firstName = ""; 
    	lastName = ""; 
    	email = "";
    	dateofBirth = "";
    }

    public User(String firstName, String lastName, String email, String dateofbirth) { 
    	this.firstName = firstName;
    	this.lastName = lastName;
    	this.email = email;
    	this.dateofBirth = dateofbirth;
    }
    
    public String getFirstName() { 
    	return firstName;
    }    
    public void setFirstName (String firstName) { 
    	this.firstName = firstName;
    }
    
    public String getLastName() { 
    	return lastName;
    }   
    public void setLastName (String lastName) { 
    	this.lastName = lastName;
    }
    
    public String getEmail() { 
    	return email;
    }
    public void setEmail (String email) { 
    	this.email = email;
    }
    
    public String getdateofBirth() { 
    	return dateofBirth;
    }
    public void setdateofBirth (String dateofbirth) { 
    	this.dateofBirth = dateofbirth;
    }
    
    public String getHeardFrom() {
        return heardFrom;
    }
    public void setHeardFrom(String heardFrom) {
        this.heardFrom = heardFrom;
    }

    public String getAnn() {
        return ann;
    }

    public void setAnn(String ann) {
        this.ann = ann;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String con) {
        this.contact = con;
    }
}
