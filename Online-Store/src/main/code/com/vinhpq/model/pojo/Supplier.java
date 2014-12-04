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
@Table(name="suppliers")
public class Supplier{
	@Id
	String id;
	public String getId(){
		return id;
	}
	public void setId(String a){
		id=a;
	}

	String name;
	public String getName(){
		return name;
	}
	public void setName(String a){
		name=a;
	}

	String logo;
	public String getLogo(){
		return logo;
	}
	public void setLogo(String a){
		logo=a;
	}

	String email;
	public String getEmail(){
		return email;
	}
	public void setEmail(String a){
		email=a;
	}

	String phone;
	public String getPhone(){
		return phone;
	}
	public void setPhone(String a){
		phone=a;
	}

	@OneToMany(mappedBy="supplier")
	List<Product> product;
	public List<Product> getProduct(){
		return product;
	}
	public void setProduct(List<Product> a){
		product=a;
	}

}