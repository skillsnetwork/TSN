package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.addblogVO;



public class addblogDAO {
	
public void addBlog(addblogVO blogvo) {
		
	
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(blogvo);
			tr.commit();
			
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	

}

public void insertblog(addblogVO blogvo) {
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(blogvo);
		tr.commit();
		System.out.println("Inserting BLOG    " );
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}	
	System.out.println("insert run");
	
}

public List searchblogblogvo(addblogVO blogvo) {
	List list= new ArrayList();
	
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		org.hibernate.Query q=session.createQuery("from addblogVO "); 
		list=q.list();
		System.out.println("searcBlog list size"+list.size());
		
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}
	return list;
	
	
}
}
