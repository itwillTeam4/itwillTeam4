package edu.spring.team4.domain;

import java.util.Date;

public class Meet {

	private int meet_idx;
	private String meet_name;
	private int meet_host;
	private String meet_intro;
	private String meet_theme;
	private int meet_member_num;
	private int meet_on_or_off;
	private int meet_when;
	private String meet_book_title;
	private String meet_book_authors;
	private String meet_book_pub;
	private String meet_book_img;
	
	public Meet() {}

	public Meet(int meet_idx, String meet_name, int meet_host, String meet_intro, String meet_theme,
			int meet_member_num, int meet_on_or_off, int meet_when, String meet_book_title, String meet_book_authors,
			String meet_book_pub, String meet_book_img) {
		this.meet_idx = meet_idx;
		this.meet_name = meet_name;
		this.meet_host = meet_host;
		this.meet_intro = meet_intro;
		this.meet_theme = meet_theme;
		this.meet_member_num = meet_member_num;
		this.meet_on_or_off = meet_on_or_off;
		this.meet_when = meet_when;
		this.meet_book_title = meet_book_title;
		this.meet_book_authors = meet_book_authors;
		this.meet_book_pub = meet_book_pub;
		this.meet_book_img = meet_book_img;
	}

	public int getMeet_idx() {
		return meet_idx;
	}

	public void setMeet_idx(int meet_idx) {
		this.meet_idx = meet_idx;
	}

	public String getMeet_name() {
		return meet_name;
	}

	public void setMeet_name(String meet_name) {
		this.meet_name = meet_name;
	}

	public int getMeet_host() {
		return meet_host;
	}

	public void setMeet_host(int meet_host) {
		this.meet_host = meet_host;
	}

	public String getMeet_intro() {
		return meet_intro;
	}

	public void setMeet_intro(String meet_intro) {
		this.meet_intro = meet_intro;
	}

	public String getMeet_theme() {
		return meet_theme;
	}

	public void setMeet_theme(String meet_theme) {
		this.meet_theme = meet_theme;
	}

	public int getMeet_member_num() {
		return meet_member_num;
	}

	public void setMeet_member_num(int meet_member_num) {
		this.meet_member_num = meet_member_num;
	}

	public int getMeet_on_or_off() {
		return meet_on_or_off;
	}

	public void setMeet_on_or_off(int meet_on_or_off) {
		this.meet_on_or_off = meet_on_or_off;
	}

	public int getMeet_when() {
		return meet_when;
	}

	public void setMeet_when(int meet_when) {
		this.meet_when = meet_when;
	}

	public String getMeet_book_title() {
		return meet_book_title;
	}

	public void setMeet_book_title(String meet_book_title) {
		this.meet_book_title = meet_book_title;
	}

	public String getMeet_book_authors() {
		return meet_book_authors;
	}

	public void setMeet_book_authors(String meet_book_authors) {
		this.meet_book_authors = meet_book_authors;
	}

	public String getMeet_book_pub() {
		return meet_book_pub;
	}

	public void setMeet_book_pub(String meet_book_pub) {
		this.meet_book_pub = meet_book_pub;
	}

	public String getMeet_book_img() {
		return meet_book_img;
	}

	public void setMeet_book_img(String meet_book_img) {
		this.meet_book_img = meet_book_img;
	}
	
	
	@Override
	public String toString() {
		return String.format("Meet{meet_idx:%d, meet_name:%s, meet_host:%d, meet_intro:%s, meet_theme:%s, meet_member_num:%d, meet_on_or_off:%d, meet_when:%s, meet_book_title:%d, meet_book_authors:%s, meet_book_pub:%s, meet_book_img:%s}",
				this.meet_idx, this.meet_name, this.meet_host, this.meet_intro, this.meet_theme, this.meet_member_num, this.meet_on_or_off, this. meet_when, this.meet_book_title, this.meet_book_authors, this.meet_book_pub, this.meet_book_img);
}}
