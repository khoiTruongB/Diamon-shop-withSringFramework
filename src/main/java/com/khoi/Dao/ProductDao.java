package com.khoi.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.khoi.Dto.ProductDto;
import com.khoi.Dto.ProductDtoMapper;

@Repository
public class ProductDao {
	@Autowired
	public JdbcTemplate Jdbc_Template;

	public List<ProductDto> getDataProducts() {
		List<ProductDto> ml = new ArrayList<ProductDto>();

		String sql = "SELECT p.id as id_product, p.id_category, p.sizes, p.name, p.price, p.sale, p.title, p.highlight, p.new_product, p.details, c.id as id_color, c.name as name_color, c.code as code_color, c.img, p.created_at, p.updated_at FROM products p, colors c WHERE p.id = c.id_product GROUP BY p.id, c.id_product limit 9";
		ml = Jdbc_Template.query(sql, new ProductDtoMapper());

		return ml;

	}
}
