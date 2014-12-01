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
@Table(name="customers")
public class Customer{
	@Id
	String id;
	public String getId(){
		return id;
	}
	public void setId(String a){
		id=a;
	}

	String password;
	public String getPassword(){
		return password;
	}
	public void setPassword(String a){
		password=a;
	}

	String fullname;
	public String getFullname(){
		return fullname;
	}
	public void setFullname(String a){
		fullname=a;
	}

	String email;
	public String getEmail(){
		return email;
	}
	public void setEmail(String a){
		email=a;
	}

	String photo;
	public String getPhoto(){
		return photo;
	}
	public void setPhoto(String a){
		photo=a;
	}

	Boolean activated;
	public Boolean getActivated(){
		return activated;
	}
	public void setActivated(Boolean a){
		activated=a;
	}

	@OneToMany(mappedBy="customer")
	List<Order> order;
	public List<Order> getOrder(){
		return order;
	}
	public void setOrder(List<Order> a){
		order=a;
	}

}