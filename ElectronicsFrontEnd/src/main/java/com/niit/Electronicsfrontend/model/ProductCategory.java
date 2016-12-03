package com.niit.Electronicsfrontend.model;

public class ProductCategory {

	String prdcategory,prdid;

	public String getPrdid() {
		return prdid;
	}

	public void setPrdid(String prdid) {
		this.prdid = prdid;
	}

	public ProductCategory(String prdid,String prdcategory)
	{
		this.prdcategory=prdcategory;
		this.prdid=prdid;
	}
	
	public String getPrdcategory() {
		return prdcategory;
	}

	public void setPrdcategory(String prdcategory) {
		this.prdcategory = prdcategory;
	}
	
}
