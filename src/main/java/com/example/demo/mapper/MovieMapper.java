package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.MovieVO;
import com.example.demo.vo.RecommendVO;

@Mapper
public interface MovieMapper {
	
	List<MovieVO> movie_list ();		// 영화 목록 표시 
	MovieVO movie_read(int code);		// 영화 상세 보기 
	List<MovieVO> movie_search(String keyword);  // 영화 검색 
	List<RecommendVO> main_recommend(String user_id, String section);  // 메인 페이지 영화 추천
}
