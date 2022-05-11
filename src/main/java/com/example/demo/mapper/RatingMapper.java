package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.RatingVO;

@Mapper
public interface RatingMapper {
	RatingVO select_mvRating(int mv_code, String rt_user_id);		// 해당 영화에 대한 그 유저의 별점 정보를 불러옴 
	int rating_insert(RatingVO rating);		// 별점 주기 기능 
	int rating_delete(int rating_num);		// 별점 삭제 기능 
}
