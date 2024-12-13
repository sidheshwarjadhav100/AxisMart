package com.sid.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int p_id;
	@Column(name = "product_name", nullable = true)
	private String name;
	@Column(name = "price", nullable = true)
	private int price;
	@Column(name = "quantity", nullable = true)
	private int quantity;
	@Column(name = "category", nullable = true)
	private String category;

	public Product() {
		super();
	}

	public Product(String name, int price, int quantity, String category) {
		super();
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.category = category;
	}

	public Product(int p_id, String name, int price, int quantity, String category) {
		super();
		this.p_id = p_id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.category = category;
	}

	public int getPid() {
		return p_id;
	}

	public void setPid(int p_id) {
		this.p_id = p_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product [p_id=" + p_id + ", name=" + name + ", price=" + price + ", quantity=" + quantity
				+ ", category=" + category + "]";
	}

	

}
