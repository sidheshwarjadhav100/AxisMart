package com.sid.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sid.entity.Product;

@Repository
public class ProductDao {

	@Autowired
	SessionFactory sessionfactory;

	public String insertProuct(Product product) {
		try {
			Session openSession = sessionfactory.openSession();
			Transaction tx = openSession.beginTransaction();
			openSession.save(product);
			tx.commit();
			openSession.close();

			return "Product Added Successfully";
		} catch (Exception e) {

			e.printStackTrace();
			return "Something Went Wrong";
		}

	}

	public List<Product> dipslayProduct() {

		List<Product> plist = null;
		try {
			Session openSession = sessionfactory.openSession();
			plist = new ArrayList<Product>();
			plist = openSession.createCriteria(Product.class).list();
			openSession.close();
			return plist;
		} catch (Exception e) {

			e.printStackTrace();
			return plist;
		}

	}

	public String deleteProduct(int id) {

		Session openSession = sessionfactory.openSession();
		Transaction tx = openSession.beginTransaction();
		Product product = openSession.get(Product.class, id);
		String res = null;

		if (!(product == null)) {
			openSession.delete(product);
			res = "Prodeuct Deleted Successfully";
		} else {
			res = "Something Went Wrong";
		}

		tx.commit();
		openSession.close();
		return res;

	}

	public Product viewUpdate(int id) {

		Session openSession = sessionfactory.openSession();
		Product product = openSession.get(Product.class, id);

		return product;
	}

	public String updateProduct(Product product) {
		String res = null;

		try {

			Session openSession = sessionfactory.openSession();
			Transaction tx = openSession.beginTransaction();
			openSession.saveOrUpdate(product);
			res = "Product Updated Successfully";
			tx.commit();
			openSession.close();

		} catch (Exception e) {
			e.printStackTrace();
			res = "Something Went Wrong";
		}

		return res;
	}

}
