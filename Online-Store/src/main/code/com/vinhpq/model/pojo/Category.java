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
@Table(name="categories")
public class Category{
	@Id
	@GeneratedValue
	Integer id;
	public Integer getId(){
		return id;
	}
	public void setId(Integer a){
		id=a;
	}

	String name;
	public String getName(){
		return name;
	}
	public void setName(String a){
		name=a;
	}

	String status;
	public String getStatus(){
		return status;
	}
	public void setStatus(String a){
		status=a;
	}

	@OneToMany(mappedBy="category")
	List<Categories_categorypatern> categories_categorypatern;
	public List<Categories_categorypatern> getCategories_categorypatern(){
		return categories_categorypatern;
	}
	public void setCategories_categorypatern(List<Categories_categorypatern> a){
		categories_categorypatern=a;
	}

	@OneToMany(mappedBy="category")
	List<Categories_product> categories_product;
	public List<Categories_product> getCategories_product(){
		return categories_product;
	}
	public void setCategories_product(List<Categories_product> a){
		categories_product=a;
	}

}