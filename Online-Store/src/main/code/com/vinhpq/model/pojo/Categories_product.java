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
@Table(name="categories_products")
public class Categories_product{
	@Id
	@GeneratedValue
	Integer id;
	public Integer getId(){
		return id;
	}
	public void setId(Integer a){
		id=a;
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

	@ManyToOne
	@JoinColumn(name ="idcatogery")
		Category category;
	public Category getCategory(){
		return category;
	}
	public void setCategory(Category a){
		category=a;
	}

}