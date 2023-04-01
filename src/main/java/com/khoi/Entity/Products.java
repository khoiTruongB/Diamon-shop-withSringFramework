package com.khoi.Entity;

import java.sql.Date;

public class Products {
	private int id;
	private int id_category;
	private String sizes;
	private String name;
	private double price;
	private double sale;
	private String title;
	private boolean highlight;
	private boolean new_product;
	private String details;
	private Date created_at;
	private Date updated_at;
	
	public Products() {
	
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public String getSizes() {
		return sizes;
	}

	public void setSizes(String sizes) {
		this.sizes = sizes;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getSale() {
		return sale;
	}

	public void setSale(double sale) {
		this.sale = sale;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public boolean isHighlight() {
		return highlight;
	}

	public void setHighlight(boolean highlight) {
		this.highlight = highlight;
	}

	public boolean isNew_product() {
		return new_product;
	}

	public void setNew_product(boolean new_product) {
		this.new_product = new_product;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	
	public static void main(String[] args) {
		String a = "SELECT p.id as id_product, p.id_category, p.sizes, p.name, p.price, p.sale, p.title, p.highlight, p.new_product, p.details, c.id as id_color, c.name as name_color, c.code as code_color, c.img, p.created_at, p.updated_at FROM products p, colors c WHERE p.id = c.id_product GROUP BY p.id, c.id_product";
		System.out.println(a);
//		String[] b = a.trim().split(", ");
//		
//		for(String c : b) {
//			System.out.println(c);
//		}
	}
}
