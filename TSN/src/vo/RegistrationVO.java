package vo;

import java.io.Serializable;

public class RegistrationVO implements Serializable {
	 private static final long serialVersionUID = 1L;
 private int RegID;
 public int getRegID() {
	return RegID;
}
public void setRegID(int regID) {
	RegID = regID;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

private String email;
 private String firstname;
 private String lastname;
 private String password;


 
 
}