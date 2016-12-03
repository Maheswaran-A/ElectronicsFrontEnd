package com.niit.Electronicsfrontend.dao;

import java.util.List;

import com.niit.Electronicsfrontend.model.ProductCategory;

public interface ProductDao {
	
	  public List<ProductCategory> getAllProducts();
	  public ProductCategory getProduct(String productId);
	  public void updateProduct(ProductCategory product);
	  public void deleteProduct(ProductCategory product);

}
