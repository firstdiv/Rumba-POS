package com.airsystem.pos.rumba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Budi Oktaviyan Suryanto <budi.oktaviyan@icloud.com>
 */

@Controller
public class UserController {

	@RequestMapping("/menu")
	public ModelAndView menuPage() {
		return new ModelAndView("menu");
	}

	@RequestMapping("/setting")
	public ModelAndView settingPage() {
		return new ModelAndView("setting");
	}
}