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
@Table(name="orderDetails")
public class OrderDetail{
	@Id
	@GeneratedValue
	Integer id;
	public Integer getId(){
		return id;
	}
	public void setId(Integer a){
		id=a;
	}

	Float unitPrice;
	public Float getUnitPrice(){
		return unitPrice;
	}
	public void setUnitPrice(Float a){
		unitPrice=a;
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