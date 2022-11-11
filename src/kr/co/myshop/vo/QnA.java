package kr.co.myshop.vo;

import java.util.Date;

public class QnA {
	private int no;			//글번호
	private String title;	//글제목
	private String content;	//글내용
	private String author;	//작성자
	private Date resDate;	//작성일
	private int lev;		//깊이
	private int parno;		//부모글번호
	private String secret;	//비밀글여부(Y:공개글, N:비밀글)
	private int visited;	//읽은횟수
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getParno() {
		return parno;
	}
	public void setParno(int parno) {
		this.parno = parno;
	}
	public String getSecret() {
		return secret;
	}
	public void setSecret(String secret) {
		this.secret = secret;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
}