package com.example.demo.vo;

public class MovieVO {
	private int openYear;
	private int code;
	private String url;
	private String title;
	private String title_forn;
	private String poster_url;
	private String genre;
	private String nation;
	private String runningTime;
	private String age;
	private String openDate;
	private String netizens_rate;
	private String netizens_participate;
	private String critics_rate;
	private String critics_participate;
	private String directors;
	private String actors;
	private String story;
	
	public MovieVO() {}

	public MovieVO(int openYear, int code, String url, String title, String title_forn, String poster_url, String genre,
			String nation, String runningTime, String age, String openDate, String netizens_rate,
			String netizens_participate, String critics_rate, String critics_participate, String directors,
			String actors, String story) {
		super();
		this.openYear = openYear;
		this.code = code;
		this.url = url;
		this.title = title;
		this.title_forn = title_forn;
		this.poster_url = poster_url;
		this.genre = genre;
		this.nation = nation;
		this.runningTime = runningTime;
		this.age = age;
		this.openDate = openDate;
		this.netizens_rate = netizens_rate;
		this.netizens_participate = netizens_participate;
		this.critics_rate = critics_rate;
		this.critics_participate = critics_participate;
		this.directors = directors;
		this.actors = actors;
		this.story = story;
	}

	public int getOpenYear() {
		return openYear;
	}

	public void setOpenYear(int openYear) {
		this.openYear = openYear;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitle_forn() {
		return title_forn;
	}

	public void setTitle_forn(String title_forn) {
		this.title_forn = title_forn;
	}

	public String getPoster_url() {
		return poster_url;
	}

	public void setPoster_url(String poster_url) {
		this.poster_url = poster_url;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getRunningTime() {
		return runningTime;
	}

	public void setRunningTime(String runningTime) {
		this.runningTime = runningTime;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getOpenDate() {
		return openDate;
	}

	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}

	public String getNetizens_rate() {
		return netizens_rate;
	}

	public void setNetizens_rate(String netizens_rate) {
		this.netizens_rate = netizens_rate;
	}

	public String getNetizens_participate() {
		return netizens_participate;
	}

	public void setNetizens_participate(String netizens_participate) {
		this.netizens_participate = netizens_participate;
	}

	public String getCritics_rate() {
		return critics_rate;
	}

	public void setCritics_rate(String critics_rate) {
		this.critics_rate = critics_rate;
	}

	public String getCritics_participate() {
		return critics_participate;
	}

	public void setCritics_participate(String critics_participate) {
		this.critics_participate = critics_participate;
	}

	public String getDirectors() {
		return directors;
	}

	public void setDirectors(String directors) {
		this.directors = directors;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public String getStory() {
		return story;
	}

	public void setStory(String story) {
		this.story = story;
	}
	
	
	
}
