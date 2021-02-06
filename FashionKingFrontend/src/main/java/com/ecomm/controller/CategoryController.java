package com.ecomm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

@Controller
public class CategoryController {

	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/showCategory")
	public String showCategory(Model m)
	{
		List<Category> categoryList=categoryDAO.retriveCategories();
		m.addAttribute("categoryList", categoryList);
		return "Category";
		
	}
	
	@RequestMapping(value="/insertCategory", method=RequestMethod.POST)
	public String insertcategory(@RequestParam("categoryId")int categoryId, @RequestParam("categoryName")String categoryName, @RequestParam("categoryDesc")String categoryDesc, Model m) {
		Category category= new Category();
		category.setCategoryId(categoryId);
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		categoryDAO.addCategory(category);
		
		List<Category> categoryList= categoryDAO.retriveCategories();
		m.addAttribute("categoryList", categoryList);
		return "Category";
		
	}
}