package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController 
{
   @GetMapping(value={"/","/login"})
   public String myDemo()
   {
	   return "index";
   }
   @GetMapping("/register")
	public String showRegisterPage() {
		return "Register";
	}
	@GetMapping("/category")
	public String showCategoryPage() {
		return "ManageCategory";
	}
	 @GetMapping("/about")
		public String aboutPage() {
			return "ManageCategory";
		}
}
