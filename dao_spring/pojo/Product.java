package pojo;
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

	Float unitPrice;
	public Float getUnitPrice(){
		return unitPrice;
	}
	public void setUnitPrice(Float a){
		unitPrice=a;
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

	Date productDate;
	public Date getProductDate(){
		return productDate;
	}
	public void setProductDate(Date a){
		productDate=a;
	}

	Integer quantity;
	public Integer getQuantity(){
		return quantity;
	}
	public void setQuantity(Integer a){
		quantity=a;
	}

	Float discount;
	public Float getDiscount(){
		return discount;
	}
	public void setDiscount(Float a){
		discount=a;
	}

	Boolean special;
	public Boolean getSpecial(){
		return special;
	}
	public void setSpecial(Boolean a){
		special=a;
	}

	Boolean latest;
	public Boolean getLatest(){
		return latest;
	}
	public void setLatest(Boolean a){
		latest=a;
	}

	Integer onlineViews;
	public Integer getOnlineViews(){
		return onlineViews;
	}
	public void setOnlineViews(Integer a){
		onlineViews=a;
	}

	Boolean available;
	public Boolean getAvailable(){
		return available;
	}
	public void setAvailable(Boolean a){
		available=a;
	}

	String description;
	public String getDescription(){
		return description;
	}
	public void setDescription(String a){
		description=a;
	}

	@ManyToOne
	@JoinColumn(name ="CategoryId")
		Category categorie;
	public Category getCategorie(){
		return categorie;
	}
	public void setCategorie(Category a){
		categorie=a;
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
	List<OrderDetail> orderDetail;
	public List<OrderDetail> getOrderDetail(){
		return orderDetail;
	}
	public void setOrderDetail(List<OrderDetail> a){
		orderDetail=a;
	}

}