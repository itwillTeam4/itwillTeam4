package edu.spring.team4.domain;

import java.util.Date;

public class Board {

	private int bno;
	private String board_title;
	private String board_content;
	private int board_view_cnt;
	private String board_like;
	private int board_meet_idx;
	private Date board_reg_date;
	private String board_tag;
	private String board_book_title;
	private String board_book_authors;
	private String board_book_pub;
	private String board_book_img;
	private String board_userid;
	
	public Board() {}

	public Board(int bno, String board_title, String board_content, int board_view_cnt, String board_like,
			int board_meet_idx, Date board_reg_date, String board_tag, String board_book_title,
			String board_book_authors, String board_book_pub, String board_book_img, String board_userid) {
		this.bno = bno;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_view_cnt = board_view_cnt;
		this.board_like = board_like;
		this.board_meet_idx = board_meet_idx;
		this.board_reg_date = board_reg_date;
		this.board_tag = board_tag;
		this.board_book_title = board_book_title;
		this.board_book_authors = board_book_authors;
		this.board_book_pub = board_book_pub;
		this.board_book_img = board_book_img;
		this.board_userid = board_userid;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public int getBoard_view_cnt() {
		return board_view_cnt;
	}

	public void setBoard_view_cnt(int board_view_cnt) {
		this.board_view_cnt = board_view_cnt;
	}

	public String getBoard_like() {
		return board_like;
	}

	public void setBoard_like(String board_like) {
		this.board_like = board_like;
	}

	public int getBoard_meet_idx() {
		return board_meet_idx;
	}

	public void setBoard_meet_idx(int board_meet_idx) {
		this.board_meet_idx = board_meet_idx;
	}

	public Date getBoard_reg_date() {
		return board_reg_date;
	}

	public void setBoard_reg_date(Date board_reg_date) {
		this.board_reg_date = board_reg_date;
	}

	public String getBoard_tag() {
		return board_tag;
	}

	public void setBoard_tag(String board_tag) {
		this.board_tag = board_tag;
	}

	public String getBoard_book_title() {
		return board_book_title;
	}

	public void setBoard_book_title(String board_book_title) {
		this.board_book_title = board_book_title;
	}

	public String getBoard_book_authors() {
		return board_book_authors;
	}

	public void setBoard_book_authors(String board_book_authors) {
		this.board_book_authors = board_book_authors;
	}

	public String getBoard_book_pub() {
		return board_book_pub;
	}

	public void setBoard_book_pub(String board_book_pub) {
		this.board_book_pub = board_book_pub;
	}

	public String getBoard_book_img() {
		return board_book_img;
	}

	public void setBoard_book_img(String board_book_img) {
		this.board_book_img = board_book_img;
	}

	public String getBoard_userid() {
		return board_userid;
	}

	public void setBoard_userid(String board_userid) {
		this.board_userid = board_userid;
	}
	
	@Override
	public String toString() {
		return String.format("Board{bno:%d, title:%s, userid:%s, content:%s, reg_date:%s, view_cnt:%d, like:%s, meetIdx:%d, tag:%s, bookTitle:%s, bookAuthors:%s, bookPub:%s, bookImg:%s}", 
				this.bno, this.board_title, this.board_userid, this.board_content, this.board_reg_date, this.board_view_cnt, this.board_like, this.board_meet_idx, this.board_tag, this.board_book_title, this.board_book_authors, this.board_book_pub, this.board_book_img);
	}
	
}
