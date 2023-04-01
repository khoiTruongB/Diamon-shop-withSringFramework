package com.khoi.Service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khoi.Dto.ProductDto;
import com.khoi.Dto.ProductDtoMapper;
import com.khoi.Entity.*;

@Service
public interface IhomeService {
	@Autowired
	public List<Slides> getDataSlides();

	public List<Category> getDataCategory();

	public List<Menus> getDataMenus();
	
	public List<ProductDto> getDataProducts();
	
	public List<ProductDto> getDataProdutByCategorys(String id);
}
