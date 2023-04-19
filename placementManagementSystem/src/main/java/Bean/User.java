package Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	private int rollno;
	
	@Column(unique = true )
	private String name;
	

	private String username;
	
	@Column(unique = true )
	private String email;
	

	private long number;
	
	private String password;
	
	private String istype;

	//constructor
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int rollno, String name, String username, String email, long number, String password) {
		super();
		this.rollno = rollno;
		this.name = name;
		this.username = username;
		this.email = email;
		this.number = number;
		this.password = password;
		this.istype = "student";
	}

	
	
	
	
	
	//getter setter
	
	public int getRollno() {
		return rollno;
	}

	public void setRollno(int rollno) {
		this.rollno = rollno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getNumber() {
		return number;
	}

	public void setNumber(long number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIstype() {
		return istype;
	}

	public void setIstype(String istype) {
		this.istype = istype;
	}
	
	
}
