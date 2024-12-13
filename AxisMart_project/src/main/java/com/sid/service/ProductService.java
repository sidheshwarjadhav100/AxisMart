package com.sid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sid.dao.ProductDao;
import com.sid.entity.Product;

@Service
public class ProductService {

	@Autowired
	private ProductDao productdao;

	public String insertProduct(Product product) {

		String res = productdao.insertProuct(product);

		return res;
	}

	public List<Product> displayProduct() {

		List<Product> ls = productdao.dipslayProduct();

		return ls;
	}

	public String deleteProduct(int id) {

		String res = productdao.deleteProduct(id);

		return res;
	}

	public Product viewUpdate(int id) {

		Product product = productdao.viewUpdate(id);
		return product;
	}

	public String updateProduct(Product product) {
		
		String res = productdao.updateProduct(product);

		
		return res;
	}

}
