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
@Table(name="orders")
public class Order{
	@Id
	@GeneratedValue
	Integer id;
	public Integer getId(){
		return id;
	}
	public void setId(Integer a){
		id=a;
	}

	Date orderDate;
	public Date getOrderDate(){
		return orderDate;
	}
	public void setOrderDate(Date a){
		orderDate=a;
	}

	Date requireDate;
	public Date getRequireDate(){
		return requireDate;
	}
	public void setRequireDate(Date a){
		requireDate=a;
	}

	String receiver;
	public String getReceiver(){
		return receiver;
	}
	public void setReceiver(String a){
		receiver=a;
	}

	String address;
	public String getAddress(){
		return address;
	}
	public void setAddress(String a){
		address=a;
	}

	Float amount;
	public Float getAmount(){
		return amount;
	}
	public void setAmount(Float a){
		amount=a;
	}

	String notes;
	public String getNotes(){
		return notes;
	}
	public void setNotes(String a){
		notes=a;
	}

	@ManyToOne
	@JoinColumn(name ="CustomerId")
		Customer customer;
	public Customer getCustomer(){
		return customer;
	}
	public void setCustomer(Customer a){
		customer=a;
	}

	@OneToMany(mappedBy="order")
	List<OrderDetail> orderDetail;
	public List<OrderDetail> getOrderDetail(){
		return orderDetail;
	}
	public void setOrderDetail(List<OrderDetail> a){
		orderDetail=a;
	}

}