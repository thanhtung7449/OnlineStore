package com.vinhpq.model.pojo;
import java.security.Timestamp;
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
@Table(name="products")
public class Product{
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

	String unitDesc;
	public String getUnitDesc(){
		return unitDesc;
	}
	public void setUnitDesc(String a){
		unitDesc=a;
	}

	String image;
	public String getImage(){
		return image;
	}
	public void setImage(String a){
		image=a;
	}

	Timestamp productDate;
	public Timestamp getProductDate(){
		return productDate;
	}
	public void setProductDate(Timestamp a){
		productDate=a;
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

	Integer special;
	public Integer getSpecial(){
		return special;
	}
	public void setSpecial(Integer a){
		special=a;
	}

	Integer latest;
	public Integer getLatest(){
		return latest;
	}
	public void setLatest(Integer a){
		latest=a;
	}

	Integer onlineViews;
	public Integer getOnlineViews(){
		return onlineViews;
	}
	public void setOnlineViews(Integer a){
		onlineViews=a;
	}

	String description;
	public String getDescription(){
		return description;
	}
	public void setDescription(String a){
		description=a;
	}

	String status;
	public String getStatus(){
		return status;
	}
	public void setStatus(String a){
		status=a;
	}

	@ManyToOne
	@JoinColumn(name ="SupplierId")
		Supplier supplier;
	public Supplier getSupplier(){
		return supplier;
	}
	public void setSupplier(Supplier a){
		supplier=a;
	}

	@OneToMany(mappedBy="product")
	List<Categories_product> categories_product;
	public List<Categories_product> getCategories_product(){
		return categories_product;
	}
	public void setCategories_product(List<Categories_product> a){
		categories_product=a;
	}

	@OneToMany(mappedBy="product")
	List<Orderdetail> orderdetail;
	public List<Orderdetail> getOrderdetail(){
		return orderdetail;
	}
	public void setOrderdetail(List<Orderdetail> a){
		orderdetail=a;
	}

	@OneToMany(mappedBy="product")
	List<Productprice> productprice;
	public List<Productprice> getProductprice(){
		return productprice;
	}
	public void setProductprice(List<Productprice> a){
		productprice=a;
	}

}