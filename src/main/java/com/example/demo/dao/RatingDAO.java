package com.example.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.mapper.RatingMapper;
import com.example.demo.vo.RatingVO;

@Repository("rating_dao")
public class RatingDAO {
	
	@Autowired
	private RatingMapper mapper;
	public RatingVO select_mvRating(int mv_code, String rt_user_id) {
		return mapper.select_mvRating(mv_code, rt_user_id);
	}
}
