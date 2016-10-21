package dao;

import javax.management.Query;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import vo.RegistrationVO;


public class RegistrationDAO {
	public void insert(RegistrationVO VO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(VO);
			tr.commit();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");
	}

	public List search(RegistrationVO vo) 
	 {
	  List ls=null;
	  try
	  {
	   SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	   Session session =sessionFactory.openSession();
	   String query="from RegistrationVO";
	   org.hibernate.Query q=session.createQuery(query);
	    ls=q.list();  
	      System.out.println("List" +ls.size());
	      return ls;
	   
	  }
	  catch(Exception exception)
	  {
	   exception.printStackTrace();
	  } 
	  
	  return ls;
	 }

	public List edit(RegistrationVO vo) {
		List ls= new ArrayList();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction tr=session.beginTransaction();
			org.hibernate.Query query=session.createQuery("from RegistrationVO where email='"+vo.getEmail()+"'");

			ls=query.list();
			tr.commit();
			System.out.println(ls.size()+ "sfsfsfsfsfs");
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
}