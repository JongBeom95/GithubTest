package com.sexking.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("user/*")
public class UserController {
	@RequestMapping(value="user/login",method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping(value="user/join",method = RequestMethod.GET)
	public ModelAndView join() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping(value="user/login2",method = RequestMethod.GET)
	public ModelAndView login2() { // 인덱스에서 로그인페이지갈때 사용 
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	@RequestMapping(value="user/join2",method = RequestMethod.GET)
	public ModelAndView join2() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
