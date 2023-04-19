package Dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Bean.Company;
import Bean.Students;
import Helper.FactoryProvider;

public class CompanyDao {
	
	private SessionFactory factory;

	public CompanyDao() {
		this.factory = FactoryProvider.getFactory();

		
	}
	
	
	
public List<Company> getAllCompany() {
			
		Session session = factory.openSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<Company> query = builder.createQuery(Company.class);
		Root<Company> root = query.from(Company.class);
		query.select(root).orderBy(builder.asc(root.get("companyname")));
		
	      List<Company> company = session.createQuery(query).getResultList();
	      session.close();
	      return company; 
	}



public Company getCompanyByName(String companyname) {
	Session session = factory.openSession();
	Query<Company> query = session.createQuery("from Company where companyname=:companyname", Company.class);
	 query.setParameter("companyname", companyname);
	  return  query.uniqueResult() ;
}



public Company getCompanyById(int cid) {
	
	Company com=null;
	try {
	Session s = factory.openSession();
	 com =s.get(Company.class, cid);
	 
	 s.close();
	
	}catch(Exception e) {
		e.printStackTrace();;
	}
	
	return com;
}



public List<Students> getAllStudentsSelectedInCompany(int companyId) {
    CriteriaBuilder builder =FactoryProvider.getFactory().openSession().getCriteriaBuilder();
    CriteriaQuery<Students> query = builder.createQuery(Students.class);
    Root<Students> root = query.from(Students.class);
    Join<Students, Company> join = root.join("companies");
    query.select(root).where(builder.equal(join.get("id"), companyId));
    return FactoryProvider.getFactory().openSession().createQuery(query).getResultList();
}



public void deleteCompany(int companyId) {
    Session session = FactoryProvider.getFactory().openSession();
    session.beginTransaction();

    Company company = (Company) session.get(Company.class, companyId);
    session.delete(company);

    session.getTransaction().commit();
    session.close();
  }





}
