package com.niit.Electronicsfrontend.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.niit.Electronicsfrontend.dao.ProductDao;
import com.niit.Electronicsfrontend.dao.ProductDaoImpl;

@Controller
public class MasterController {

	@RequestMapping("/masterlogin")
	public String MasterLoginAuthenticator(ModelMap model,HttpServletRequest request) {
	      model.addAttribute("message", "Hello Spring MVC Framework!");
	      String view=null;
	      
	      String username=request.getParameter("usr_name").trim();
	      String password=request.getParameter("pwd").trim();
	      if(username.equalsIgnoreCase("system") && password.equals("system123#"))
	      {
	    	  System.out.println("In IF loop");
	    	  ProductDao product=new ProductDaoImpl();
		  	  String json = new Gson().toJson(product.getAllProducts());
		      model.addAttribute("Products",json);
		      System.out.println("Json object--->"+json);
		      //request.setAttribute("Products", json);
		      view="home";
	      }
	      else
	      {
	    	  ProductDao product=new ProductDaoImpl();
		  	  String json = new Gson().toJson(product.getAllProducts());
		      model.addAttribute("Products",json);  
		      view="login";
	      }
	      
	      
	      ProductDao product=new ProductDaoImpl();
	  	  String json = new Gson().toJson(product.getAllProducts());
	      model.addAttribute("Products",json);
	      System.out.println("This is  controller servlet call");
	      return view;
	   }
	@RequestMapping("/")
	public String homePage(ModelMap model)
	{
		return "login";
	}
	
	
}
