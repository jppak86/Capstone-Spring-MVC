package com.soccershop.springdemo.entity;



import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="Cart")
public class Cart {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "product_id")
	private TopProduct top;
	
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	@Column(name="quantity")
	private int quantity;

	public Cart() {
		
	}
	
	

	public Cart(int id, TopProduct top, User user, int quantity) {
		super();
		this.id = id;
		this.top = top;
		this.user = user;
		this.quantity = quantity;
	}



	public Cart(TopProduct top, int quantity) {
		
		this.top = top;
		this.quantity = quantity;
	}

	



	public Cart(TopProduct top, User user, int quantity) {
	
		this.top = top;
		this.user = user;
		this.quantity = quantity;
	}



	public void setId(int id) {
		this.id = id;
	}




	public int getId() {
		return id;
	}

	public TopProduct getTop() {
		return top;
	}

	public User getUser() {
		return user;
	}

	public int getQuantity() {
		return quantity;
	}



	public void setTop(TopProduct top) {
		this.top = top;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}




	@Override
	public String toString() {
		return "Cart [top=" + top + ", user=" + user + ", quantity=" + quantity + "]";
	}
	
	
}
