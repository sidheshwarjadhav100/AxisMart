package com.sid.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sid.entity.Product;
import com.sid.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productservice;

	@GetMapping("/index-page")
	public String indexPage() {
		return "index";

	}

	@GetMapping("/add-prodcut")
	public String addProductForm() {

		return "add";

	}

	@PostMapping("/insert-product")
	public String insertProduct(@ModelAttribute Product product) {

		String res = productservice.insertProduct(product);
		System.out.println(res);
		return "add";

	}

	@GetMapping("/display-product")
	public String viewProduct(Model model) {
		List<Product> ls = productservice.displayProduct();
		System.out.println(ls);
		model.addAttribute("product", ls);
		return "display";

	}

	@GetMapping("/delete-product")
	public String deleteProduct(@RequestParam("pid") int id) {

		String res = productservice.deleteProduct(id);

		return "redirect:/display-product";

	}

	@GetMapping("/view-product")
	public String viewUpdate(@RequestParam("pid") int id, Model model) {
		Product product = productservice.viewUpdate(id);
		model.addAttribute("p", product);
		return "update";

	}
	
	@PostMapping("/update-product")
	public String updateProduct(@ModelAttribute Product product) {
		
		String res=productservice.updateProduct(product);
		
		return "redirect:/display-product" ;
		
	}
	

}
