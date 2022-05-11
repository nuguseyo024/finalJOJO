package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.RatingVO;

@Mapper
public interface RatingMapper {
	RatingVO select_mvRating(int mv_code, String rt_user_id);				// 해당 영화에 대한 그 유저의 별점 정보를 불러옴 
	int rating_insert(RatingVO rating);
}
