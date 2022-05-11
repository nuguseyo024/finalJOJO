package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String rating_view(HttpServletRequest req, Model model) {
		int mv_code = Integer.parseInt(req.getParameter("code")); 
		String rt_user_id = req.getParameter("user_id");
		
		RatingVO rating = svc.select_mvRating(mv_code,rt_user_id);
		
		System.out.println(rating.getRating_num());
		model.addAttribute("rating", rating);
		return "/movie/rating";
	} 
}
