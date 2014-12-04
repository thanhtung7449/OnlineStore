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

	Timestamp orderDate;
	public Timestamp getOrderDate(){
		return orderDate;
	}
	public void setOrderDate(Timestamp a){
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

	Double amount;
	public Double getAmount(){
		return amount;
	}
	public void setAmount(Double a){
		amount=a;
	}

	String notes;
	public String getNotes(){
		return notes;
	}
	public void setNotes(String a){
		notes=a;
	}

	String status;
	public String getStatus(){
		return status;
	}
	public void setStatus(String a){
		status=a;
	}

	@ManyToOne
	@JoinColumn(name ="CustomerId")
		Account account;
	public Account getAccount(){
		return account;
	}
	public void setAccount(Account a){
		account=a;
	}

	@OneToMany(mappedBy="order")
	List<Orderdetail> orderdetail;
	public List<Orderdetail> getOrderdetail(){
		return orderdetail;
	}
	public void setOrderdetail(List<Orderdetail> a){
		orderdetail=a;
	}

}