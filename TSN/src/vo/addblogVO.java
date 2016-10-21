package vo;

import java.io.Serializable;

public class addblogVO implements Serializable {
	 private static final long serialVersionUID = 1L;
	private int blogID;
	private int id;
	private String tasktitle;
	private String taskdescription;
	private String duedate;
	private String place;
	private String firstname;
	private String lastname;
	private String email;
	
	
	public String getTasktitle() {
		return tasktitle;
	}
	public void setTasktitle(String tasktitle) {
		this.tasktitle = tasktitle;
	}
	public String getTaskdescription() {
		return taskdescription;
	}
	public void setTaskdescription(String taskdescription) {
		this.taskdescription = taskdescription;
	}
	
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBlogID() {
		return blogID;
	}
	public void setBlogID(int blogID) {
		this.blogID = blogID;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
