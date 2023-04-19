package Dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Bean.User;
import Helper.FactoryProvider;

public class StudentDao {
	
	private SessionFactory factory;
	
	public StudentDao() {
		this.factory = FactoryProvider.getFactory();
	}
	
	
	public User getUserByEmailAndPassword(String email ,String password) {
		
		User user =null;
		
		try {
		String query ="from User u where u.email=:x and u.password=:p";
		Session s = factory.openSession();
		
		Query q = s.createQuery(query);
		q.setParameter("x", email);
		q.setParameter("p", password);
		
		user = (User)q.uniqueResult();
		
		s.close();
		
		}catch(Exception e ) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	
	public User getUserByEmail(String email) {
		
		Session session = factory.openSession();
	//	Transaction t = session.beginTransaction();
		
		String querry ="From User u  where u.email=:email";
		
		Query q = session.createQuery(querry,User.class);
		q.setParameter("email", email);
		
		User user =(User)q.uniqueResult();
		session.close();
		return user; 
	}
	
	public int updatePassword(int rollno, String password) {
		
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		
		String querry ="update User u set u.password =: password where u.rollno=:rollno";
		
		
		Query q = s.createQuery(querry);
		q.setParameter("password", password);
		q.setParameter("rollno", rollno);
		
		q.executeUpdate();
		t.commit();
		
		
		return rollno;
	}
	
	
	

}
