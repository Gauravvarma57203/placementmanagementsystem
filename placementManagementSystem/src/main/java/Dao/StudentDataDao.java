package Dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Bean.Company;
import Bean.Students;
import Helper.FactoryProvider;

public class StudentDataDao {

	private SessionFactory factory;
	
	public StudentDataDao() {
		this.factory = FactoryProvider.getFactory();
	}

//getting data asscending order data
	public List<Students> getAllStudent() {
		
		Session session = factory.openSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<Students> query = builder.createQuery(Students.class);
		Root<Students> root = query.from(Students.class);
		query.select(root).orderBy(builder.asc(root.get("rollnumber")));
		
	      List<Students> students = session.createQuery(query).getResultList();
	      session.close();
	      return students; 
	}
	
	public int  saveStudent(Students st) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		
		int pid =(Integer)s.save(st);
		t.commit();
		s.close();
		
		return pid;
	}
	
	
		
	 public Students getStudentByName(String name) {
		 
		 Session session = factory.openSession();
		 String q="from Students where name =:name";
		 
		 Query<Students> query=session.createQuery(q, Students.class);
		 query.setParameter("name", name);
		  return  query.uniqueResult() ;
	 }
	
		public Students getStudentById(int sid) {

			Students student = null;
			try {
				Session s = this.factory.openSession();
				student = s.get(Students.class, sid);
				s.close();
			} catch (Exception e) {
				e.printStackTrace();

			}
			return student;
		}

	 
	 public List<Students> getStudentByName(String[] names) {
	        Session session = factory.openSession();
	        Query<Students> query = session.createQuery("from Students where name in (:names)", Students.class);
	        query.setParameterList("names", names);
	        return query.list();
	    }
	
	 
	 public int updateStudent(int id , Students student) {
		 Session s = factory.openSession();
		 Transaction t = s.beginTransaction();
				 
		try {
			
		
			s.update(student);
			t.commit();
			s.close();
			return id;
		}catch (Exception e) {
			e.printStackTrace();
		}
	 
		 	return 0;
	 }

	
}
