package com.soccershop.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bottom")
public class Bottom {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="product_name")
	private String productName;
	
	@Column(name="price")
	private int price;
	
	@Column(name="img")
	private String img;
	

	public Bottom() {
		
	}


	public int getId() {
		return id;
	}


	public String getProductName() {
		return productName;
	}


	public int getPrice() {
		return price;
	}


	public String getImg() {
		return img;
	}


	public void setId(int id) {
		this.id = id;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public void setImg(String img) {
		this.img = img;
	}


	@Override
	public String toString() {
		return "Bottom [id=" + id + ", productName=" + productName + ", price=" + price + ", img=" + img + "]";
	}


	


	

	
		
}





