package com.laptrinhjavaweb.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.dto.PlaceDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.service.IPlaceService;
import com.laptrinhjavaweb.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@Autowired
	MessageUtil messageUtil;

	@Autowired
	IPlaceService placeService;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		String image = "p2.jpg";
		ModelAndView mav = new ModelAndView("web/home");
		List<PlaceDTO> models = placeService.findNewPlace();
		PlaceDTO dto1 = models.get(0);
		PlaceDTO dto2 = models.get(1);
		mav.addObject("model1" , dto1);
		mav.addObject("model2" , dto2);

		mav.addObject("test" , image);
		return mav;
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}


	@RequestMapping(value = "/place_detail", method = RequestMethod.GET)
	public ModelAndView placeDetail() {

		ModelAndView mav = new ModelAndView("web/placeDetail");
		return mav;
	}


	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView registerPage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("sign_up");
		UserDTO dto = new UserDTO();
		if(request.getParameter("message")!= null)
		{
			Map<String , String> messege = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", messege.get("message"));
			mav.addObject("alert", messege.get("alert"));
		}
		mav.addObject("model", dto);
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
