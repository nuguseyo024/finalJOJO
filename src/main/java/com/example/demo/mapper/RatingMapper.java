package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.RatingVO;

@Mapper
public interface RatingMapper {
	RatingVO select_mvRating(int mv_code, String rt_user_id);		// 해당 영화에 대한 그 유저의 별점 정보를 불러옴 
	int rating_insert(RatingVO rating);		// 별점 주기 기능 
	int rating_delete(int rating_num);		// 별점 삭제 기능 
	RatingVO rating_read(int rating_num);	// 별졈 번호로 별점 가져오기 (수정 페이지 불러오는데 사용) 
	int rating_update(RatingVO rating);		// 별점 수정 기능 
}
