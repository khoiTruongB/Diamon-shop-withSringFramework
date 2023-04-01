package com.khoi.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {


	@RequestMapping(value = { "/", "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {

//		ModelAndView mv = new ModelAndView("user/index");
		mv_Share.addObject("slides", homeImpl_Service.getDataSlides());
		mv_Share.addObject("category", homeImpl_Service.getDataCategory());
		mv_Share.addObject("products", homeImpl_Service.getDataProducts());
		mv_Share.setViewName("user/index");
		return mv_Share;

	}

	@RequestMapping(value = { "/san-pham" }, method = RequestMethod.GET)
	public ModelAndView Product() {

		ModelAndView mv = new ModelAndView("user/product");
		return mv;

	}
}
