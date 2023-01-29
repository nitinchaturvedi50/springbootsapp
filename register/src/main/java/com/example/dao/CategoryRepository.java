package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.Category;

@Repository("categoryRepository")
public interface  CategoryRepository extends CrudRepository<Category,Integer>{
           
	

	

}
