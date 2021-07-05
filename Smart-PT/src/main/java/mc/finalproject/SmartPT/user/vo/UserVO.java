package mc.finalproject.SmartPT.user.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("userVO")
public class UserVO {
   
   
   private String id; //ID
   private String pwd; // PW
   private String name; //NAME
   private String question;
   private String answer;
   private String email; //E-mail
   private int age; //age
   private String nickname; //NickName
   private String tel; //TEL
   private String addr; //Address
   private String cm; //170cm 160cm
   private String kg; //60kg 70kg
   private Date joinDate;
   
   public UserVO() {
      
   }

  

public UserVO(String id, String pwd, String name, String question, String answer,
		String email, int age, String nickname, String tel, String addr, String cm, String kg) {
      
      this.id = id;
      this.pwd = pwd;
      this.name = name;
      this.question = question;
      this.answer = answer;
      this.email = email;
      this.age = age;
      this.nickname = nickname;
      this.tel = tel;
      this.addr = addr;
      this.cm = cm;
      this.kg = kg;
   }
   
	public String getQuestion() {
	return question;
}



public void setQuestion(String question) {
	this.question = question;
}



public String getAnswer() {
	return answer;
}



public void setAnswer(String answer) {
	this.answer = answer;
}



	public int getAge() {
		return age;
	}

	public void setAge(int age) {
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

   public String getCm() {
      return cm;
   }

   public void setCm(String cm) {
      this.cm = cm;
   }

   public String getKg() {
      return kg;
   }

   public void setKg(String kg) {
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
      String info = this.id+", "+ this.pwd+", "+ this.name+", "+ this.question+", "+ this.answer+", "
    		  + this.email+", "+ this.age+", "+ this.nickname+", "+ this.tel+", "
    		  + this.addr+", "+this.cm+", "+this.kg;
      //System.out.println(info);
      return info;
   }
}