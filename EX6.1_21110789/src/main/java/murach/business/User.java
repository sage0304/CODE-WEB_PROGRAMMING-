package murach.business;

import java.io.Serializable;

public class User implements Serializable { 
	private String email;
    private String firstName; 
    private String lastName;
    private String dateofBirth;
    
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
    
}
