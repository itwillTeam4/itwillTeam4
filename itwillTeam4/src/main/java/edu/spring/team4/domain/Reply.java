package edu.spring.team4.domain;

import java.util.Date;

public class Reply {

	private int rno;
	private String rtext;
	private String user_id;
	private Date reply_reg_date;
	private String reply_like;
	private int reply_like_cnt;
	private int bno;

	public Reply() {
		super();
	}

	public Reply(int rno, String rtext, String user_id, Date reply_reg_date, String reply_like, int reply_like_cnt,
			int bno) {
		super();
		this.rno = rno;
		this.rtext = rtext;
		this.user_id = user_id;
		this.reply_reg_date = reply_reg_date;
		this.reply_like = reply_like;
		this.reply_like_cnt = reply_like_cnt;
		this.bno = bno;
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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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

	public int getReply_like_cnt() {
		return reply_like_cnt;
	}

	public void setReply_like_cnt(int reply_like_cnt) {
		this.reply_like_cnt = reply_like_cnt;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	@Override
	public String toString() {
		return "Reply [rno=" + rno + ", rtext=" + rtext + ", user_id=" + user_id + ", reply_reg_date=" + reply_reg_date
				+ ", reply_like=" + reply_like + ", reply_like_cnt=" + reply_like_cnt + ", bno=" + bno + "]";
	}

}
