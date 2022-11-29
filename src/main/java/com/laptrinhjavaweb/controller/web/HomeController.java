package com.laptrinhjavaweb.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping(value = "/thoat", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}
	
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dang-nhap?accessDenied");
	}



	@RequestMapping(value = "/contact" , method = RequestMethod.GET)
	public ModelAndView contact(){
		ModelAndView nav = new ModelAndView("web/contact");
		return nav;
	}

	@RequestMapping(value = "/diadanh" , method = RequestMethod.GET)
	public ModelAndView diadiem(){
		ModelAndView nav = new ModelAndView("web/diadanh-yeuthich");
		return nav;
	}

	@RequestMapping(value = "/event" , method = RequestMethod.GET)
	public ModelAndView event(){
		ModelAndView nav = new ModelAndView("web/event");
		return nav;
	}

	@RequestMapping(value = "/dacsan" , method = RequestMethod.GET)
	public ModelAndView food(){
		ModelAndView nav = new ModelAndView("web/dacsan");
		return nav;
	}

	@RequestMapping(value = "/khachsan" , method = RequestMethod.GET)
	public ModelAndView hotel(){
		ModelAndView nav = new ModelAndView("web/khachsan");
		return nav;
	}





}
