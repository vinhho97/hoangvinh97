package BEAN;

public class Users {
		private String UserName;
		private String PassWord;
		private String Role;
		public String getUserName() {
			return UserName;
		}
		public void setUserName(String userName) {
			UserName = userName;
		}
		public String getPassWord() {
			return PassWord;
		}
		public void setPassWord(String passWord) {
			PassWord = passWord;
		}
		/**
		 * @return the role
		 */
		public String getRole() {
			return Role;
		}
		/**
		 * @param role the role to set
		 */
		public void setRole(String role) {
			Role = role;
		}
}
