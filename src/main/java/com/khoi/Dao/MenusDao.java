package com.khoi.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.khoi.Entity.*;

@Repository
public class MenusDao {

	@Autowired
	public JdbcTemplate Jdbc_Template;

	public List<Menus> getDataMenus() {
		List<Menus> ml = new ArrayList<Menus>();

		String sql = "SELECT * FROM menus";
		ml = Jdbc_Template.query(sql, new MapperMenus());

		return ml;
	}
}
