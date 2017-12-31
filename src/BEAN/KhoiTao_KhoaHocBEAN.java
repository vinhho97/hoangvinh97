package BEAN;

import java.util.Date;
public class KhoiTao_KhoaHocBEAN {

		private String CourseID;
		private String CourseName;
		private double CourseTime;
		private double CourseMoney;
		private Date Openday;
		public String getCourseID() {
			return CourseID;
		}
		public void setCourseID(String courseID) {
			CourseID = courseID;
		}
		public String getCourseName() {
			return CourseName;
		}
		public void setCourseName(String courseName) {
			CourseName = courseName;
		}
		public double getCourseTime() {
			return CourseTime;
		}
		public void setCourseTime(double courseTime) {
			CourseTime = courseTime;
		}
		public double getCourseMoney() {
			return CourseMoney;
		}
		public void setCourseMoney(double courseMoney) {
			CourseMoney = courseMoney;
		}
		public Date getOpenday() {
			return Openday;
		}
		public void setOpenday(Date openday) {
			Openday = openday;
		}
}
