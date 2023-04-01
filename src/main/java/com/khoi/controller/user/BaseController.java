package com.khoi.controller.user;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.khoi.Service.user.HomeImplService;

@Controller
public class BaseController {

	@Autowired
	public HomeImplService homeImpl_Service;
	
	public ModelAndView mv_Share = new ModelAndView();
	
	@PostConstruct //tạo hàm dựng để khi run thì chạy trc
	public ModelAndView Init() {
		mv_Share.addObject("menus", homeImpl_Service.getDataMenus());
		return mv_Share;
	}
}
