package BEAN;

import java.util.Date;

public class KhoiTao_ThuKyBEAN {

	private String SecretaryID;
	private String FullName;
	private String Male;
	private Date BirthDay;
	private String Phone;
	private String Email;
	private String Address;
	public String getSecretaryID() {
		return SecretaryID;
	}
	public void setSecretaryID(String secretaryID) {
		SecretaryID = secretaryID;
	}
	public String getFullName() {
		return FullName;
	}
	public void setFullName(String fullName) {
		FullName = fullName;
	}
	public String getMale() {
		return Male;
	}
	public void setMale(String male) {
		Male = male;
	}
	public Date getBirthDay() {
		return BirthDay;
	}
	public void setBirthDay(Date birthDay) {
		BirthDay = birthDay;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
}
