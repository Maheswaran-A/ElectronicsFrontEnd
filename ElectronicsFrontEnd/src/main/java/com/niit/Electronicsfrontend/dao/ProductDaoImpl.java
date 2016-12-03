package com.niit.Electronicsfrontend.dao;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.niit.Electronicsfrontend.model.Product;
import com.niit.Electronicsfrontend.model.ProductCategory;

public class ProductDaoImpl implements ProductDao{

	List <ProductCategory>productCategory;
	
	public ProductDaoImpl()
	
	{
		productCategory=new ArrayList();
		productCategory.add(new ProductCategory("101","Keyboard"));
		productCategory.add(new ProductCategory("102","Mouse"));
		productCategory.add(new ProductCategory("103","Mobile"));
		productCategory.add(new ProductCategory("104","Tablet"));
		productCategory.add(new ProductCategory("105","Camera"));
	
		
		
	}
	
	public List<ProductCategory> getAllProducts() {
		// TODO Auto-generated method stub
		
		return productCategory;
	}

	public ProductCategory getProduct(String productId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateProduct(ProductCategory product) {
		// TODO Auto-generated method stub
		
		
	}

	public void deleteProduct(ProductCategory product) {
		// TODO Auto-generated method stub
		
	}

}
