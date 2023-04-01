package com.khoi.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController extends BaseController {
	@RequestMapping(value = { "/dang-ky" })
	
	public ModelAndView Register() {

//		ModelAndView mv = new ModelAndView("user/category");
		mv_Share.setViewName("user/register");
		return mv_Share;

	}
}
