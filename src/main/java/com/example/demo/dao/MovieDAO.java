package com.example.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.mapper.MovieMapper;
import com.example.demo.vo.MovieVO;

@Repository("movie_dao")
public class MovieDAO {
	
	@Autowired
	private MovieMapper mapper;
	
	// 영화 목록 띄우기 
	public 	List<MovieVO> movie_list (){
		return mapper.movie_list();
	}	
	// 영화 상세 화면 띄우기 
	public MovieVO movie_read(int code) {
		return mapper.movie_read(code);
	}
	public List<MovieVO> movie_search(String keyword) {
		return mapper.movie_search(keyword);
	}
	
}
