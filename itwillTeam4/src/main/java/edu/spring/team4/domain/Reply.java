package edu.spring.team4.domain;

import java.util.Date;

public class Reply {

	private int rno;
	private String rtext;
	private String reply_userid;
	private Date reply_reg_date;
	private String reply_like;
	private int reply_bno;
	
	public Reply () {}

	public Reply(int rno, String rtext, String reply_userid, Date reply_reg_date, String reply_like, int reply_bno) {
		this.rno = rno;
		this.rtext = rtext;
		this.reply_userid = reply_userid;
		this.reply_reg_date = reply_reg_date;
		this.reply_like = reply_like;
		this.reply_bno = reply_bno;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getRtext() {
		return rtext;
	}

	public void setRtext(String rtext) {
		this.rtext = rtext;
	}

	public String getReply_userid() {
		return reply_userid;
	}

	public void setReply_userid(String reply_userid) {
		this.reply_userid = reply_userid;
	}

	public Date getReply_reg_date() {
		return reply_reg_date;
	}

	public void setReply_reg_date(Date reply_reg_date) {
		this.reply_reg_date = reply_reg_date;
	}

	public String getReply_like() {
		return reply_like;
	}

	public void setReply_like(String reply_like) {
		this.reply_like = reply_like;
	}

	public int getReply_bno() {
		return reply_bno;
	}

	public void setReply_bno(int reply_bno) {
		this.reply_bno = reply_bno;
	}
	
	@Override
	public String toString() {
		//TODO:
		return "";
	}
}
