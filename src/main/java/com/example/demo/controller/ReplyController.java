package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.svc.ReplySvc;
import com.example.demo.vo.ReplyVO;

@Controller
@RequestMapping("/reply")
public class ReplyController {
	@Autowired
	private HttpSession session;
	@Autowired
	private ReplySvc svc;

	// 댓글 작성 
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String reply_insert(ReplyVO reply) {
		svc.reply_insert(reply);
		int r_board_num = reply.getR_board_num();
		// TB_board reply_count update
		svc.replyCount_update(r_board_num);
		
		return "redirect:/board/board_read/" + r_board_num;
	}
}
