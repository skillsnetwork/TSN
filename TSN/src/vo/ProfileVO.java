package vo;

import java.io.Serializable;

public class ProfileVO implements Serializable{
	 private static final long serialVersionUID = 1L;
	
	private String firstname;
	private String lastname;
	private String filePath;
	
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getCompnayname() {
		return compnayname;
	}
	public void setCompnayname(String compnayname) {
		this.compnayname = compnayname;
	}
	private String compnayname;
	private int RegID;
	
	public int getRegID() {
		return RegID;
	}
	public void setRegID(int regID) {
		RegID = regID;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public int getUserprofileid() {
		return userprofileid;
	}
	public void setUserprofileid(int userprofileid) {
		this.userprofileid = userprofileid;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	private int userprofileid;
	

}
