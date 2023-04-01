package com.khoi.Dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.khoi.Entity.MapperSlides;
import com.khoi.Entity.Slides;

@Repository
public class SlidesDao {

	@Autowired
	public JdbcTemplate Jdbc_Template;

	public List<Slides> getDataSlides() {
		List<Slides> sl = new ArrayList<Slides>();

		String sql = "SELECT * FROM slides";
		sl = Jdbc_Template.query(sql, new MapperSlides());

		return sl;
	}

}
