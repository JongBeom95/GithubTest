package com.sexking.www.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sexking.www.dao.BoardDAO;
import com.sexking.www.dao.UserDAO;
import com.sexking.www.logic.Board;
import com.sexking.www.logic.Members;
import com.sexking.www.service.BoardService;
import com.sexking.www.service.UserService;

@Controller
@RequestMapping("jquery/*")
public class JqueryController {
	
	@Autowired
	BoardService boardService;
	@Autowired
	UserService userService;
	@Autowired
	UserDAO userDAO;
	@Autowired
	BoardDAO boardDAO;
	
	
	@RequestMapping(value="jquery/boardwrite",method = RequestMethod.POST)
	@ResponseBody
	public int boardwrite(HttpSession session, Board board) {
		int result = 0;
		board.setUserID(session.getAttribute("SID").toString());
		result = boardService.boardwrite(board);
		return result;
	}
	@RequestMapping(value="jquery/boardwrite2",method = RequestMethod.POST)
	@ResponseBody
	public int boardwrite2(HttpSession session, Board board) {
		int result = 0;
		board.setUserID(session.getAttribute("SID").toString());
		result = boardService.boardwrite2(board);
		return result;
	}
	
	@RequestMapping(value = "jquery/login", method = RequestMethod.POST)
    @ResponseBody
    public int login(HttpSession session, Members members) {
        int cnt  = userDAO.login(members);
        if(cnt==1) {
            //로그인 성공
            session.setAttribute("SID", members.getUserID());
        }
        return cnt;
    }
	
	@RequestMapping(value = "jquery/login2", method = RequestMethod.POST)
	@ResponseBody // 특정 데이터를 jsp(웹페이지)로 반환할때 사용  
	public int login2(HttpSession session, Members members) {
		int cnt = userDAO.login2(members);
		if(cnt==1) {
			session.setAttribute("SID", members.getUserID());//3 
		}
		
		return cnt;
		
	}
	
	@RequestMapping(value = "jquery/join")
	@ResponseBody
	public int join(Members members) {
		
		return userDAO.join(members);
	}
	
	@RequestMapping(value = "jquery/join2")
	@ResponseBody
	public int join2(Members members) {
		
		return userDAO.join2(members);
	}
	
	@RequestMapping(value = "jquery/Delete")
	@ResponseBody
	public int Delete(Board board) {
		
	
		return boardDAO.boardDelete(board.getBbsID());
	}
	@RequestMapping(value = "jquery/Update")
	@ResponseBody
	public int Update(Board board) {
		return boardDAO.boardUpdate(board);
	}
}

	