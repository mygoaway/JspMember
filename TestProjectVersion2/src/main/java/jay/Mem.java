package jay;

public class Mem {
	private String mem_id;
	private String mem_pwd;
	private String mem_name;
	private String mem_phone;
	private String mem_email;
	private String mem_joindate;
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_joindate() {
		return mem_joindate;
	}
	public void setMem_joindate(String mem_joindate) {
		this.mem_joindate = mem_joindate;
	}
	@Override
	public String toString() {
		return "Mem [mem_id=" + mem_id + ", mem_pwd=" + mem_pwd + ", mem_name=" + mem_name + ", mem_phone=" + mem_phone
				+ ", mem_email=" + mem_email + ", mem_joindate=" + mem_joindate + "]";
	}
}
