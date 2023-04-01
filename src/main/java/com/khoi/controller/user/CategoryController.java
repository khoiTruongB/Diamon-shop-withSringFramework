package com.khoi.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController extends BaseController {
	@RequestMapping(value = { "/category/{id}" })
	
	//@PathVariable part nằm trong url
	public ModelAndView Category(@PathVariable String id) {

//		ModelAndView mv = new ModelAndView("user/category");
		mv_Share.addObject("id_category", id);
		mv_Share.addObject("c_products", homeImpl_Service.getDataProdutByCategorys(id));
		mv_Share.setViewName("user/produts/category");
		return mv_Share;

	}
}
