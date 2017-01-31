package com.niit.suggestioncartfrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.suggestioncartbackend.dao.CategoryDAO;
import com.niit.suggestioncartbackend.dao.ProductDAO;
import com.niit.suggestioncartbackend.dao.SupplierDAO;
import com.niit.suggestioncartbackend.model.Category;
import com.niit.suggestioncartbackend.model.Product;
import com.niit.suggestioncartbackend.model.Supplier;
import com.niit.suggestioncartbackend.util.FileUtil;
import com.niit.suggestioncartbackend.util.Util;


@Controller
public class ProductController {

	@Autowired(required=true)
	private ProductDAO productDAO;
	
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	
	@Autowired(required=true)
	private SupplierDAO supplierDAO;
	
    String path="G:\\products\\";
	
	@RequestMapping(value="/product")
	public String listProduct(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("category",new Category());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList",this.supplierDAO.list());
		return "product";
	}
	
	@RequestMapping(value="/addproduct")
public String addProduct(@ModelAttribute("product")Product product,Model model)
{
		String newID = Util.removeComma(product.getId());
		product.setId(newID);
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category);
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		
		productDAO.saveOrUpdate(product);
		
		MultipartFile image= product.getImage();
		FileUtil.upload(path, image, product.getId()+".jpg");
		
		model.addAttribute("productList",this.productDAO.list());
	  return "redirect:/product";
}
	
@RequestMapping("removeproduct/{id}")
public String deleteProduct(@PathVariable("id")String id ,ModelMap model)throws Exception{
try{
	productDAO.delete(id);
	model.addAttribute("msg", "successfully added");
}
catch (Exception e)
{
	model.addAttribute("msg", e.getMessage());
	e.printStackTrace();
}
		return "redirect:/product";
	}

@RequestMapping("editproduct/{id}")
public String editProduct(@PathVariable("id")String id, Model model) 
{
	System.out.println("editProduct");
	model.addAttribute("product", this.productDAO.get(id));
	model.addAttribute("ProductList", this.productDAO.list());
	model.addAttribute("categoryList",this.categoryDAO.list());
	model.addAttribute("supplierList",this.supplierDAO.list());
	

	return "product";
}
@RequestMapping(value="/mobile_products")
public String mobile_product(Model model)
{
	int num=1;
	String id=Integer.toString(num);
	System.out.println("inside productGetByCategoryId");
	model.addAttribute("productList",productDAO.getProductbyCategoryId(id));
	
	return "mobile_product";
}
@RequestMapping("/wedding_suggestion")
public String wedding(Model model)
{
	int num=2;
	String id=Integer.toString(num);
	System.out.println("inside productGetByCategoryId");
	model.addAttribute("productList",productDAO.getProductbyCategoryId(id));
	return "suggestion1";
}
@RequestMapping(value="/product_description/{id}")
public String productDisplay(@PathVariable("id") String id,Model model)
{
	model.addAttribute("product",productDAO.getProductById(id));
	return "description";
}
@RequestMapping(value="/product_description/home")
public String product()
{
	return "redirect:/home";
}
@RequestMapping(value="/product_description/mobile_products")
public String productback()
{
	return "redirect:/mobile_products";
}
@RequestMapping(value="/product_description/about_us")
public String product1()
{
	return "redirect:/about_us";
}
@RequestMapping(value="/product_description/contact_us")
public String product2()
{
	return "redirect:/contact_us";
}
@RequestMapping(value="/product_description/cart")
public String productcart()
{
	return "redirect:/cart";
}
@RequestMapping(value="/product_description/login")
public String productlogin()
{
	return "redirect:/login";
}
@RequestMapping(value="/product_description/register")
public String productregister()
{
	return "redirect:/register";
}
@RequestMapping(value="/product_description/logout")
public String productlogout()
{
	return "redirect:/logout";
}
@RequestMapping(value="/product_description/user/cart")
public String productcart1()
{
	return "redirect:/user/cart";
}
@RequestMapping(value="/user/cart/home")
public String cart()
{
	return "redirect:/home";
}
@RequestMapping(value="/user/cart/mobile_products")
public String productack()
{
	return "redirect:/mobile_products";
}
@RequestMapping(value="/user/cart/about_us")
public String prodct1()
{
	return "redirect:/about_us";
}
@RequestMapping(value="/user/cart/contact_us")
public String poduct2()
{
	return "redirect:/contact_us";
}
@RequestMapping(value="/user/cart/cart")
public String prodctcart()
{
	return "redirect:/cart";
}
@RequestMapping(value="/user/cart/login")
public String prouctlogin()
{
	return "redirect:/login";
}
@RequestMapping(value="/user/cart/register")
public String produtregister()
{
	return "redirect:/register";
}
@RequestMapping(value="/user/cart/logout")
public String produlogout()
{
	return "redirect:/logout";
}
@RequestMapping(value="/user/cart/user/cart")
public String productcar()
{
	return "redirect:/user/cart";
}
}




