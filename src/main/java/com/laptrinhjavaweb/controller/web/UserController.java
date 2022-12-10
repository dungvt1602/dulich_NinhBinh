package com.laptrinhjavaweb.controller.web;


import com.laptrinhjavaweb.dto.PlaceDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    @RequestMapping(value = "/nguoi-dung/edit", method = RequestMethod.GET)
    public ModelAndView homePage() {

        ModelAndView mav = new ModelAndView("web/save_profile");
        return mav;
    }

    @RequestMapping(value = "/nguoi-dung/save-place", method = RequestMethod.GET)
    public ModelAndView savePlace() {

        ModelAndView mav = new ModelAndView("web/list_place");
        return mav;
    }

    @RequestMapping(value = "/user_profile", method = RequestMethod.GET)
    public ModelAndView user_profile() {

        ModelAndView mav = new ModelAndView("web/user_profile");
        return mav;
    }

    @RequestMapping(value = "/edit_profile", method = RequestMethod.GET)
    public ModelAndView edit_profile() {

        ModelAndView mav = new ModelAndView("web/edit_profile");
        return mav;
    }
}


