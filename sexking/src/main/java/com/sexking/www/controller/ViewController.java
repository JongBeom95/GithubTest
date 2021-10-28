package com.sexking.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sexking.www.dao.BoardDAO;
import com.sexking.www.logic.Board;
import com.sexking.www.logic.Members;
import com.sexking.www.service.BoardService;

@Controller
	@RequestMapping("view/*")
	public class ViewController {
	
		@Autowired
		BoardService boardService;
		@Autowired 
		BoardDAO boardDAO;
		
		@RequestMapping("view/dashboard")
		public ModelAndView dashboard() {
			List<Board> result = boardService.getBoardList();
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("result", result);
			
			return mav;
		}
		@RequestMapping("view/dashboard2")
		public ModelAndView dashboard2() {
		List<Board>	result = boardDAO.getBoardList2();
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("result", result);
			return mav;
		}
		@RequestMapping(value="view/boardwrite",method = RequestMethod.GET)
		public ModelAndView boardwrite() {
			ModelAndView mav = new ModelAndView();
			return mav; }
		@RequestMapping(value="view/boardwrite2", method = RequestMethod.GET)
		public ModelAndView boardwrite2() {
			ModelAndView mav = new ModelAndView();
			return mav;
		}
		
		@RequestMapping(value="view/boardDetail",method = RequestMethod.GET)
		public ModelAndView boardDetail(int bbsID) {
			Board result = boardService.getBoardDetail(bbsID);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			return mav;
		}
		@RequestMapping(value="view/boardDetail2",method = RequestMethod.GET)
		public ModelAndView boardDetail2(int bbsID) {
			Board result = boardService.getBoardDetail2(bbsID);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			return mav;
		}
		@RequestMapping(value="view/boardUpdate", method = RequestMethod.GET)
		public ModelAndView boardUpdate(int bbsID){
			Board result = boardService.getBoardDetail2(bbsID);
			
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			return mav;
		}
		
	}

