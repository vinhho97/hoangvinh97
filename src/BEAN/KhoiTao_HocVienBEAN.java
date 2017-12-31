package BEAN;

import java.sql.Date;

public class KhoiTao_HocVienBEAN {
	
		private String StudentID;
		private String FullName;
		private String Male;
		private Date BirthDay;
		private String Phone;
		private String Email;
		private String Address;
		private String Status;
		public String getStudentID() {
			return StudentID;
		}
		public void setStudentID(String studentID) {
			StudentID = studentID;
		}
		public String getFullName() {
			return FullName;
		}
		public void setFullName(String fullName) {
			FullName = fullName;
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
		public String getAddress() {
			return Address;
		}
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
		public String getStatus() {
			return Status;
		}
		public void setStatus(String status) {
			Status = status;
		}
		
}
