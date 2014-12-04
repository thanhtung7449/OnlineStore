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
@Table(name="productprices")
public class Productprice{
	@Id
	@GeneratedValue
	Integer id;
	public Integer getId(){
		return id;
	}
	public void setId(Integer a){
		id=a;
	}

	String color;
	public String getColor(){
		return color;
	}
	public void setColor(String a){
		color=a;
	}

	String size;
	public String getSize(){
		return size;
	}
	public void setSize(String a){
		size=a;
	}

	String volume;
	public String getVolume(){
		return volume;
	}
	public void setVolume(String a){
		volume=a;
	}

	String info;
	public String getInfo(){
		return info;
	}
	public void setInfo(String a){
		info=a;
	}

	Double price;
	public Double getPrice(){
		return price;
	}
	public void setPrice(Double a){
		price=a;
	}

	@ManyToOne
	@JoinColumn(name ="idproduct")
		Product product;
	public Product getProduct(){
		return product;
	}
	public void setProduct(Product a){
		product=a;
	}

}