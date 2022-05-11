package com.example.demo.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.demo.dao.RatingDAO;
import com.example.demo.vo.RatingVO;

@Service
public class RatingSvc {
	@Autowired
	private RatingDAO dao;
	
	public RatingSvc(@Qualifier("rating_dao") RatingDAO dao) {
		this.dao = dao;
	}

	public RatingVO select_mvRating(int mv_code, String rt_user_id) {
		return dao.select_mvRating(mv_code, rt_user_id);
	}
}
