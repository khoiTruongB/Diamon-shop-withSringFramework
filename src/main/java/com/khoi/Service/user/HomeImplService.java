package com.khoi.Service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khoi.Dao.*;
import com.khoi.Dto.ProductDto;
import com.khoi.Entity.*;


@Service
public class HomeImplService implements IhomeService{
	
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private MenusDao menusDao;
	@Autowired
	private ProductDao productDao;
	
	public List<Slides> getDataSlides() {
		return slidesDao.getDataSlides();
	}

	public List<Category> getDataCategory() {
		return categoryDao.getDataCategorys();
	}

	@Override
	public List<Menus> getDataMenus() {
		return menusDao.getDataMenus();
	}

	@Override
	public List<ProductDto> getDataProducts() {
		
		return productDao.getDataProducts();
	}

	@Override
	public List<ProductDto> getDataProdutByCategorys(String id) {
		 return categoryDao.getDataProdutByCategorys(id);
	}

	
}
