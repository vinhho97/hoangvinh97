package BEAN;
import java.sql.Date;
public class ThuKy_KhoiTaoHopThuDenBEAN {

	private String SupportID;
	private String FullName;
	private String Frontpager;
	private String Message;
	private Date  DateSend;
	private String Email;
	public String getFullName() {
		return FullName;
	}
	public void setFullName(String fullName) {
		FullName = fullName;
	}
	public String getFrontpager() {
		return Frontpager;
	}
	public void setFrontpager(String frontpager) {
		Frontpager = frontpager;
	}
	public Date getDateSend() {
		return DateSend;
	}
	public void setDateSend(Date dateSend) {
		DateSend = dateSend;
	}

	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	/**
	 * @return the supportID
	 */
	/**
	 * @return the supportID
	 */
	public String getSupportID() {
		return SupportID;
	}
	/**
	 * @param supportID the supportID to set
	 */
	public void setSupportID(String supportID) {
		SupportID = supportID;
	}
	
}
