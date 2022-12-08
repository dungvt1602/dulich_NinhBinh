package com.laptrinhjavaweb.controller.web;


import com.laptrinhjavaweb.dto.PlaceDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public ModelAndView homePage() {

        ModelAndView mav = new ModelAndView("web/save_profile");
;
        return mav;
    }
}
