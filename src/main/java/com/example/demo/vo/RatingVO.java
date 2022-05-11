package com.example.demo.vo;

public class RatingVO {
	private int rating_num;
	private double user_rating;
	private int rt_user_num;
	private String rt_user_id;
	private int mv_code;
	private String rating_date;
	
	public RatingVO() {}

	public RatingVO(int rating_num, double user_rating, int rt_user_num, String rt_user_id, int mv_code,
			String rating_date) {
		super();
		this.rating_num = rating_num;
		this.user_rating = user_rating;
		this.rt_user_num = rt_user_num;
		this.rt_user_id = rt_user_id;
		this.mv_code = mv_code;
		this.rating_date = rating_date;
	}

	public int getRating_num() {
		return rating_num;
	}

	public void setRating_num(int rating_num) {
		this.rating_num = rating_num;
	}

	public double getUser_rating() {
		return user_rating;
	}

	public void setUser_rating(double user_rating) {
		this.user_rating = user_rating;
	}

	public int getRt_user_num() {
		return rt_user_num;
	}

	public void setRt_user_num(int rt_user_num) {
		this.rt_user_num = rt_user_num;
	}

	public String getRt_user_id() {
		return rt_user_id;
	}

	public void setRt_user_id(String rt_user_id) {
		this.rt_user_id = rt_user_id;
	}

	public int getMv_code() {
		return mv_code;
	}

	public void setMv_code(int mv_code) {
		this.mv_code = mv_code;
	}

	public String getRating_date() {
		return rating_date;
	}

	public void setRating_date(String rating_date) {
		this.rating_date = rating_date;
	}
	
}
