package com.example.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.example.model.Category;

@Repository("categoryDAO")
public class CategoryDAO {
	@Autowired
	CategoryRepository categoryRepository;
	 SessionFactory sessionFactory;
	ArrayList<Category> categoryList = new ArrayList<Category>();

	public void addCategory(Category category) {
		
		 categoryList.add(category);
		categoryRepository.save(category);
	}

	 public List<Category> getCategory()
     {
     	return categoryList;
     }

	public void deleteCategory(int categoryId) {
		// TODO Auto-generated method stub
		categoryRepository.deleteById(categoryId);
		
		System.out.println("Inside deleteCustomer :: Customer deleted ::" + categoryId);

		
		
	}
	public Category getCategory(int categoryId) {
		Optional<Category> category = categoryRepository.findById(categoryId);
		if(category.isPresent()) {
			return category.get();
		}
		return new Category();
	}

	public void updateCategory(Category category) {
		// TODO Auto-generated method stub
		
		 categoryList.add(category);
			categoryRepository.save(category);
	}

	public List<Category> getCategoryList() {
		return (List<Category>) categoryRepository.findAll();
	}

	}



