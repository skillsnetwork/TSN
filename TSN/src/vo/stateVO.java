package vo;

import java.io.Serializable;

public class stateVO implements Serializable
{
	 private static final long serialVersionUID = 1L;
	 private int stateID;
	 private String stateName;
	 private String stateCode;
	 private countryVO countryvo;

	public int getStateID() {
		return stateID;
	}

	public void setStateID(int stateID) {
		this.stateID = stateID;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getStateCode() {
		return stateCode;
	}

	public void setStateCode(String stateCode) {
		this.stateCode = stateCode;
	}

	public countryVO getCountryvo() {
		return countryvo;
	}

	public void setCountryvo(countryVO countryvo) {
		this.countryvo = countryvo;
	}

	
}
