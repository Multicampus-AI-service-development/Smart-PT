package mc.finalproject.SmartPT.user.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("userVO")
public class UserVO {
   
   
   private String id; //ID
   private String pwd; // PW
   private String name; //NAME
   private String email; //E-mail
   private String age; //age
   private String nickname; //NickName
   private String tel; //TEL
   private String addr; //Address
   private Short cm; //170cm 160cm
   private Short kg; //60kg 70kg
   private Date joinDate;
   
   public UserVO() {
      
   }

  

public UserVO(String id, String pwd, String name, String email, String age, 
		String nickname, String tel, String addr, Short cm, Short kg) {
      
      this.id = id;
      this.pwd = pwd;
      this.name = name;
      this.email = email;
      this.age = age;
      this.nickname = nickname;
      this.tel = tel;
      this.addr = addr;
      this.cm = cm;
      this.kg = kg;
   }
   
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
   public String getNickname() {
      return nickname;
   }

   public void setNickname(String nickname) {
      this.nickname = nickname;
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
      String info = this.id+", "+ this.pwd+", "+ this.name+", " + this.email+", "+ 
    		  this.age+", "+ this.nickname+", "+ this.tel+", "+ this.addr+", "+this.cm+", "+this.kg;
      //System.out.println(info);
      return info;
   }
}