package com.khoi.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.khoi.Dto.ProductDto;
import com.khoi.Dto.ProductDtoMapper;
import com.khoi.Entity.Category;
import com.khoi.Entity.MapperCategory;

@Repository
public class CategoryDao {

	@Autowired
	public JdbcTemplate Jdbc_Template;

	public List<Category> getDataCategorys() {
		List<Category> cl = new ArrayList<Category>();

		String sql = "SELECT * FROM categorys";
		cl = Jdbc_Template.query(sql, new MapperCategory());

		return cl;
	}
	
	public List<ProductDto> getDataProdutByCategorys(String id) {
		List<ProductDto> cl = new ArrayList<ProductDto>();

		String sql = "SELECT p.id as id_product, "
				+ "p.id_category, p.sizes, p.name, "
				+ "p.price, p.sale, p.title, p.highlight, "
				+ "p.new_product, p.details, c.id as id_color, "
				+ "c.name as name_color, c.code as code_color, "
				+ "c.img, p.created_at, "
				+ "p.updated_at FROM products p, colors c WHERE p.id = c.id_product AND p.id_category = "+
				id +" GROUP BY p.id, c.id_product";
				cl = Jdbc_Template.query(sql, new ProductDtoMapper());

		return cl;
	}
	
	
	
}
