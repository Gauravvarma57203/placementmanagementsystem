package Bean;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Students {
	
	@Id
	int rollnumber;
	
	private String  name;
	private long mobNumber;
	
	private String sEmail;
	
	private String dateOfBirth;
	private long alternateNumber;
	private float tenthPercentage;
	private float twelvethPercentage;
	private float AverageTenAndTwelvethPercentage;
	private float firstSemCgpa;
	private float firstSemPercentage;
	private float secondSemCgpa;
	private float secondSemPercentage;
	private float thirdSemCgpa;
	private float thirdSemPercentage;
	
	private float fourthSemCgpa;
	private float fourthSemPercentage;
	
	
	private float firstYearPercentage;
	private float secondYearPercentage;
	private float averageFirstAndSecondYearPercent;
	private String Eligible;
	
	private int  backlog;
	private int gap;
	private String diploma;
	
	
	//mappping many to one
	
		@ManyToMany(fetch = FetchType.EAGER)
		private List<Company> company;
	
	
	


	public Students() {
		super();
		// TODO Auto-generated constructor stub
	}




	
	
	//constructor
	
	
	public Students(int rollnumber, String name, long mobNumber, String sEmail, String dateOfBirth,
			long alternateNumber, float tenthPercentage, float twelvethPercentage,
			float averageTenAndTwelvethPercentage, float firstSemCgpa, float firstSemPercentage,
			float secondSemCgpa, float secondSemPercentage, float thirdSemCgpa, float thirdSemPercentage,
			float fourthSemCgpa, float fourthSemPercentage) {
		super();
		this.rollnumber = rollnumber;
		this.name = name;
		this.mobNumber = mobNumber;
		this.sEmail = sEmail;
		this.dateOfBirth = dateOfBirth;
		this.alternateNumber = alternateNumber;
		this.tenthPercentage = tenthPercentage;
		this.twelvethPercentage = twelvethPercentage;
		AverageTenAndTwelvethPercentage = averageTenAndTwelvethPercentage;
		this.firstSemCgpa = firstSemCgpa;
		this.firstSemPercentage = firstSemPercentage;
		this.secondSemCgpa = secondSemCgpa;
		this.secondSemPercentage = secondSemPercentage;
		this.thirdSemCgpa = thirdSemCgpa;
		this.thirdSemPercentage = thirdSemPercentage;
		this.fourthSemCgpa = fourthSemCgpa;
		this.fourthSemPercentage = fourthSemPercentage;
	}
	
	




public Students(int rollnumber, String name, long mobNumber, String sEmail, String dateOfBirth,
			long alternateNumber, float tenthPercentage, float twelvethPercentage,
			float averageTenAndTwelvethPercentage, float firstSemCgpa, float firstSemPercentage, float secondSemCgpa,
			float secondSemPercentage, float thirdSemCgpa, float thirdSemPercentage, float fourthSemCgpa,
			float fourthSemPercentage, float firstYearPercentage, float secondYearPercentage,
			float averageFirstAndSecondYearPercent, String eligible, int backlog, int gap, String diploma) {
		super();
		this.rollnumber = rollnumber;
		this.name = name;
		this.mobNumber = mobNumber;
		this.sEmail = sEmail;
		this.dateOfBirth = dateOfBirth;
		this.alternateNumber = alternateNumber;
		this.tenthPercentage = tenthPercentage;
		this.twelvethPercentage = twelvethPercentage;
		AverageTenAndTwelvethPercentage = averageTenAndTwelvethPercentage;
		this.firstSemCgpa = firstSemCgpa;
		this.firstSemPercentage = firstSemPercentage;
		this.secondSemCgpa = secondSemCgpa;
		this.secondSemPercentage = secondSemPercentage;
		this.thirdSemCgpa = thirdSemCgpa;
		this.thirdSemPercentage = thirdSemPercentage;
		this.fourthSemCgpa = fourthSemCgpa;
		this.fourthSemPercentage = fourthSemPercentage;
		this.firstYearPercentage = firstYearPercentage;
		this.secondYearPercentage = secondYearPercentage;
		this.averageFirstAndSecondYearPercent = averageFirstAndSecondYearPercent;
		Eligible = eligible;
		this.backlog = backlog;
		this.gap = gap;
		this.diploma = diploma;
	}






//getter and setter

	public int getRollnumber() {
		return rollnumber;
	}


	public void setRollnumber(int rollnumber) {
		this.rollnumber = rollnumber;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public long getMobNumber() {
		return mobNumber;
	}


	public void setMobNumber(long mobNumber) {
		this.mobNumber = mobNumber;
	}


	public String getDateOfBirth() {
		return dateOfBirth;
	}
	
	public String getsEmail() {
		return sEmail;
	}


	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}




	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	public long getAlternateNumber() {
		return alternateNumber;
	}


	public void setAlternateNumber(long alternateNumber) {
		this.alternateNumber = alternateNumber;
	}


	public float getTenthPercentage() {
		return tenthPercentage;
	}


	public void setTenthPercentage(float tenthPercentage) {
		this.tenthPercentage = tenthPercentage;
	}


	public float getTwelvethPercentage() {
		return twelvethPercentage;
	}


	public void setTwelvethPercentage(float twelvethPercentage) {
		this.twelvethPercentage = twelvethPercentage;
	}


	public float getAverageTenAndTwelvethPercentage() {
		return AverageTenAndTwelvethPercentage;
	}


	public void setAverageTenAndTwelvethPercentage(float averageTenAndTwelvethPercentage) {
		AverageTenAndTwelvethPercentage = averageTenAndTwelvethPercentage;
	}


	public float getFirstSemCgpa() {
		return firstSemCgpa;
	}


	public void setFirstSemCgpa(float firstSemCgpa) {
		this.firstSemCgpa = firstSemCgpa;
	}


	public float getFirstSemPercentage() {
		return firstSemPercentage;
	}


	public void setFirstSemPercentage(float firstSemPercentage) {
		this.firstSemPercentage = firstSemPercentage;
	}


	public float getSecondSemCgpa() {
		return secondSemCgpa;
	}


	public void setSecondSemCgpa(float secondSemCgpa) {
		this.secondSemCgpa = secondSemCgpa;
	}


	public float getSecondSemPercentage() {
		return secondSemPercentage;
	}


	public void setSecondSemPercentage(float secondSemPercentage) {
		this.secondSemPercentage = secondSemPercentage;
	}


	public float getThirdSemCgpa() {
		return thirdSemCgpa;
	}


	public void setThirdSemCgpa(float thirdSemCgpa) {
		this.thirdSemCgpa = thirdSemCgpa;
	}


	public float getThirdSemPercentage() {
		return thirdSemPercentage;
	}


	public void setThirdSemPercentage(float thirdSemPercentage) {
		this.thirdSemPercentage = thirdSemPercentage;
	}


	public float getFourthSemCgpa() {
		return fourthSemCgpa;
	}


	public void setFourthSemCgpa(float fourthSemCgpa) {
		this.fourthSemCgpa = fourthSemCgpa;
	}


	public float getFourthSemPercentage() {
		return fourthSemPercentage;
	}


	public void setFourthSemPercentage(float fourthSemPercentage) {
		this.fourthSemPercentage = fourthSemPercentage;
	}






	public float getFirstYearPercentage() {
		return firstYearPercentage;
	}






	public void setFirstYearPercentage(float firstYearPercentage) {
		this.firstYearPercentage = firstYearPercentage;
	}






	public float getSecondYearPercentage() {
		return secondYearPercentage;
	}






	public void setSecondYearPercentage(float secondYearPercentage) {
		this.secondYearPercentage = secondYearPercentage;
	}






	public float getAverageFirstAndSecondYearPercent() {
		return averageFirstAndSecondYearPercent;
	}






	public void setAverageFirstAndSecondYearPercent(float averageFirstAndSecondYearPercent) {
		this.averageFirstAndSecondYearPercent = averageFirstAndSecondYearPercent;
	}






	public String getEligible() {
		return Eligible;
	}






	public void setEligible(String eligible) {
		Eligible = eligible;
	}






	public int getBacklog() {
		return backlog;
	}






	public void setBacklog(int backlog) {
		this.backlog = backlog;
	}






	public int getGap() {
		return gap;
	}






	public void setGap(int gap) {
		this.gap = gap;
	}






	public String getDiploma() {
		return diploma;
	}






	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}



	
	

	public List<Company> getCompany() {
			return company;
		}






		public void setCompany(List<Company> company) {
			this.company = company;
		}




	
	
	
	
	
	
	


}
