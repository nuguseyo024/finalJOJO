package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.svc.RatingSvc;
import com.example.demo.vo.RatingVO;

@Controller
@RequestMapping("/rating")
public class RatingController {

	@Autowired
	private HttpSession session;
	@Autowired
	private RatingSvc svc;

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String reply_insert(RatingVO rating) {
		svc.rating_insert(rating);
		int mv_code = rating.getMv_code();
		String rt_user_id = rating.getRt_user_id();
		System.out.println("mv_code : " + mv_code+ "rt_user_id : " + rt_user_id);
		return "redirect:/movie/movie_read/" + mv_code+"?mv_code="+mv_code+"&rt_user_id="+rt_user_id;
	}
}
