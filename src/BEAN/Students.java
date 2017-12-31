package BEAN;

import java.util.Date;

public class Students {

	private String StudentID;
	private String Fullname;
	private String Male;
	private String BirthDay;
	private String Phone;
	private String Email;
	private String Address;
	public String getStudentID() {
		return StudentID;
	}
	public void setStudentID(String studentID) {
		StudentID = studentID;
	}
	public String getFullname() {
		return Fullname;
	}
	public void setFullname(String fullname) {
		Fullname = fullname;
	}
	/**
	 * @return the male
	 */
	/**
	 * @return the birthDay
	 */
	public String getBirthDay() {
		return BirthDay;
	}
	/**
	 * @param birthDay the birthDay to set
	 */
	public void setBirthDay(String birthDay) {
		BirthDay = birthDay;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return Phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		Phone = phone;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return Address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		Address = address;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMale() {
		return Male;
	}
	public void setMale(String male) {
		Male = male;
	}
}
