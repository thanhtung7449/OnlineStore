package com.vinhpq.model.pojo;
import java.util.List;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.ManyToOne;
import javax.persistence.IdClass;import javax.persistence.OneToMany;

@Entity
@Table(name="orderdetails")
public class Orderdetail{
	@Id
	@GeneratedValue
	Integer id;
	public Integer getId(){
		return id;
	}
	public void setId(Integer a){
		id=a;
	}

	Double unitPrice;
	public Double getUnitPrice(){
		return unitPrice;
	}
	public void setUnitPrice(Double a){
		unitPrice=a;
	}

	Integer quantity;
	public Integer getQuantity(){
		return quantity;
	}
	public void setQuantity(Integer a){
		quantity=a;
	}

	Double discount;
	public Double getDiscount(){
		return discount;
	}
	public void setDiscount(Double a){
		discount=a;
	}

	@ManyToOne
	@JoinColumn(name ="OrderId")
		Order order;
	public Order getOrder(){
		return order;
	}
	public void setOrder(Order a){
		order=a;
	}

	@ManyToOne
	@JoinColumn(name ="ProductId")
		Product product;
	public Product getProduct(){
		return product;
	}
	public void setProduct(Product a){
		product=a;
	}

}