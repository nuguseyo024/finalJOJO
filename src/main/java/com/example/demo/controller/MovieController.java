package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.svc.MovieSvc;
import com.example.demo.vo.BoardVO;
import com.example.demo.vo.MovieVO;

@Controller
@RequestMapping("/movie")
public class MovieController {

	@Autowired
	private MovieSvc svc;

	// ========================================= 영화 메인 화면 
	@GetMapping("/movie_list")
	public String getListByPage(Model model) {
		model.addAttribute("movie", svc.movie_list());
		return "/movie/movie_list";
	}

	// ========================================= 영화 상세 화면 
	@GetMapping("/movie_read/{code}")
	public String movie_read(@PathVariable("code") int code, Model model) {
		MovieVO movie = svc.movie_read(code);
		model.addAttribute("movie", movie);
		return "/movie/movie_read";
	}
	
	// ========================================= 영화 검색 화면
		// http://localhost:8080/movie/movie_searchList?keyword={검색어}
		@GetMapping("/movie_searchList")
		public String movie_searchList(@RequestParam("keyword") String keyword, Model model) {
			List<MovieVO> list = svc.movie_search(keyword);
			model.addAttribute("list", list);

			return "/movie/movie_searchList";
		}
}
