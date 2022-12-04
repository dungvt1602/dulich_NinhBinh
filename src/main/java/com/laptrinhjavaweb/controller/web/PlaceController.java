package com.laptrinhjavaweb.controller.web;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOError;
import java.io.IOException;


@Controller(value = "PlaceControllerWeb")
public class PlaceController {

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String submit(@RequestParam("files") MultipartFile multipartFile ,
						 HttpServletRequest request ,ModelMap model) {
		try {

			String fileName = multipartFile.getOriginalFilename();
			File file = new File("D:/Year 4/HK1/TLCN/spring-mvc-spring-security/src/main/webapp/template/web/assets/images", fileName);
			multipartFile.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "upload failed");
		}
		return "admin/new/list";
	}




}
