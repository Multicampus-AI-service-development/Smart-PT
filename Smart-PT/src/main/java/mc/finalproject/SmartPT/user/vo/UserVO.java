package mc.finalproject.SmartPT.user.vo;

import java.sql.Date;

public class UserVO {
	
	private Short cm;
	private Short kg;
	private String id;
	private String pwd;
	private String name;
	private String tel;
	private String email;
	private String addr;
	private Date joinDate;
	
	public UserVO() {
		
	}

	public UserVO(String id, String pwd, String name, String tel, Short cm, Short kg, String email, String addr) {
		this.cm = cm;
		this.kg = kg;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.addr = addr;
		this.tel = tel;
	}
	
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Short getCm() {
		return cm;
	}

	public void setCm(Short cm) {
		this.cm = cm;
	}

	public Short getKg() {
		return kg;
	}

	public void setKg(Short kg) {
		this.kg = kg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	@Override
	public String toString() {
		String info = this.id+", "+ this.pwd+", "+ this.name+", "+ this.tel+", "+ this.email+", "+ this.cm+", "+this.kg+", "+this.addr;
		//System.out.println(info);
		return info;
	}
}
