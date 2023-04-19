package Bean;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Company {
	
	
	
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		
		private String companyname;
		
		private String location;
		 
		private String salarypackage;
		
		private String jobprofile;
		
		private String interviewdate;
		
		private String type;
		
		


		@Column(length=200)
		private String description;

		@ManyToMany(cascade = CascadeType.MERGE,fetch = FetchType.EAGER)
		private List<Students> students;
		
		
		





		public Company() {
			super();
			// TODO Auto-generated constructor stub
		}

		
		
		
		
		
		
		public Company(String companyname, String location, String salarypackage, String jobprofile, String description) {
			super();
			this.companyname = companyname;
			this.location = location;
			this.salarypackage = salarypackage;
			this.jobprofile = jobprofile;
			this.description = description;
		}







		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getCompanyname() {
			return companyname;
		}

		public void setCompanyname(String companyname) {
			this.companyname = companyname;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public String getSalarypackage() {
			return salarypackage;
		}

		public void setSalarypackage(String salarypackage) {
			this.salarypackage = salarypackage;
		}

		public String getJobprofile() {
			return jobprofile;
		}

		public void setJobprofile(String jobprofile) {
			this.jobprofile = jobprofile;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}



		public List<Students> getStudents() {
			return students;
		}







		public void setStudents(List<Students> students) {
			this.students = students;
		}







		public String getInterviewdate() {
			return interviewdate;
		}







		public void setInterviewdate(String interviewdate) {
			this.interviewdate = interviewdate;
		}







		public String getType() {
			return type;
		}







		public void setType(String type) {
			this.type = type;
		}




		

	





		

	}


