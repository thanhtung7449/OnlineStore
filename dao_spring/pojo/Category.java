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

	String nameVN;
	public String getNameVN(){
		return nameVN;
	}
	public void setNameVN(String a){
		nameVN=a;
	}

	@OneToMany(mappedBy="categorie")
	List<Product> product;
	public List<Product> getProduct(){
		return product;
	}
	public void setProduct(List<Product> a){
		product=a;
	}

}