package mc.finalproject.SmartPT.board.vo;

import java.util.Date;

public class BoardVO {
	private int number; //게시판 고유 번호(PK)
	private String title; //게시글 제목
	private String content; //게시글 내용
	private Date joinDate; //게시글 시간
	private String name; //작성자
	
	
	//댓글 기능 구현 해야됨
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
}
