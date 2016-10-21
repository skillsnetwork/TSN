package vo;

import java.io.Serializable;

public class seminarVO implements Serializable{
	 private static final long serialVersionUID = 1L;
	private int seminarID;
	private int deliveredid;
	private int countryid;
	private int stateid;
	private int cityid;
	private int seminaroption;
	private int fees;
	private int manageby;
	private String seminarname;
	private String subject;
	private String description;
	private String deliveredrole;
	private String date;
	private String time;
	private String venue;
	private String currency;
	private String seminartype;
	private String attendedby;
	private String rating;
	private String verify;
	private UserRegisterVO userregistervo,userregistervo1;
	private cityVo cityvo;
	
	
	
	public int getDeliveredid() {
		return deliveredid;
	}
	public void setDeliveredid(int deliveredid) {
		this.deliveredid = deliveredid;
	}
	public int getCountryid() {
		return countryid;
	}
	public void setCountryid(int countryid) {
		this.countryid = countryid;
	}
	public int getStateid() {
		return stateid;
	}
	public void setStateid(int stateid) {
		this.stateid = stateid;
	}
	public int getCityid() {
		return cityid;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	public int getSeminaroption() {
		return seminaroption;
	}
	public void setSeminaroption(int seminaroption) {
		this.seminaroption = seminaroption;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	public int getManageby() {
		return manageby;
	}
	public void setManageby(int manageby) {
		this.manageby = manageby;
	}
	public String getSeminarname() {
		return seminarname;
	}
	public void setSeminarname(String seminarname) {
		this.seminarname = seminarname;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDeliveredrole() {
		return deliveredrole;
	}
	public void setDeliveredrole(String deliveredrole) {
		this.deliveredrole = deliveredrole;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
  public String getSeminartype() {
		return seminartype;
	}
	public void setSeminartype(String seminartype) {
		this.seminartype = seminartype;
	}
	public String getAttendedby() {
		return attendedby;
	}
	public void setAttendedby(String attendedby) {
		this.attendedby = attendedby;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public int getSeminarID() {
		return seminarID;
	}
	public void setSeminarID(int seminarID) {
		this.seminarID = seminarID;
	}
	public UserRegisterVO getUserregistervo() {
		return userregistervo;
	}
	public void setUserregistervo(UserRegisterVO userregistervo) {
		this.userregistervo = userregistervo;
	}
	public UserRegisterVO getUserregistervo1() {
		return userregistervo1;
	}
	public void setUserregistervo1(UserRegisterVO userregistervo1) {
		this.userregistervo1 = userregistervo1;
	}
	public cityVo getCityvo() {
		return cityvo;
	}
	public void setCityvo(cityVo cityvo) {
		this.cityvo = cityvo;
	}
	
	
	
}