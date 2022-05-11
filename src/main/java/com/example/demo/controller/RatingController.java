package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.svc.RatingSvc;
import com.example.demo.vo.RatingVO;

@Controller
@RequestMapping("/rating")
public class RatingController {

	@Autowired
	private HttpSession session;
	@Autowired
	private RatingSvc svc;

	@GetMapping("/rating")
	public String rating_view(@RequestParam("mv_code") int mv_code, 
								@RequestParam("rt_user_id") String rt_user_id,
									Model model) 
	{
		RatingVO rating = svc.select_mvRating(mv_code, rt_user_id);
		System.out.println(rating.getRating_num());
		model.addAttribute("rating", rating);
		return "/movie/rating";
	}
}
