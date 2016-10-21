package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import vo.UserRegisterVO;

public class UserRegisterDAO {
	public void insert(UserRegisterVO VO) 
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(VO);
			tr.commit();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("insert run");
	}

	public void updatepass(UserRegisterVO userVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			//org.hibernate.Query q=session.createQuery("update UserRegisterVO SET email='"+userVO.getEmail()+"' and password='"+userVO.getPassword()+"' where email='"+userVO.getEmail()+"'");
			session.saveOrUpdate(userVO);
			tr.commit();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("Updated Succesfully");
		
	}


	public List search(UserRegisterVO loginVO) {
		List ls= new ArrayList();
		  try
		  {
		   SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		   Session session=sessionFactory.openSession();
		   Transaction tr=session.beginTransaction();
		   org.hibernate.Query query=session.createQuery("from RegistrationVO where email='"+loginVO.getEmail()+"' and password='"+loginVO.getPassword()+"'");

		   ls=query.list();
		   System.out.println("List size is" + ls.size());
		   tr.commit();
		   System.out.println(ls.size()+ "sfsfsfsfsfs");
		  }
		  catch(Exception z)
		  {
		   z.printStackTrace();
		  }
		  return ls;

	}

	public List authentication(UserRegisterVO s) 
	 {
	  List list= new ArrayList();
	  try
	  {
	   SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	   Session session =sessionFactory.openSession();
	   Transaction tr = session.beginTransaction();
	   
	   org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+s.getEmail()+"'"); 
	   list=q.list();
	   tr.commit();
	  }
	  catch(Exception exception)
	  {
	   exception.printStackTrace();
	  }
	  return list;
	 }
	
	public List getUserByUserId(UserRegisterVO userVO){
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+userVO.getEmail()+"'"); 
			list=q.list();
			tr.commit();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;

		
	}

	public List searchSignupUser(UserRegisterVO vo) {
		List ls= new ArrayList();
		  try
		  {
		   SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		   Session session=sessionFactory.openSession();
		   Transaction tr=session.beginTransaction();
		   org.hibernate.Query query=session.createQuery("from UserRegisterVO ");

		   ls=query.list();
		   System.out.println("List size is" + ls.size());
		   tr.commit();
		   System.out.println(ls.size()+ "sfsfsfsfsfs");
		  }
		  catch(Exception z)
		  {
		   z.printStackTrace();
		  }
		  return ls;

	}

	public List searchprofile(UserRegisterVO uploadvo) 
	{
		List ls= new ArrayList();
		  try
		  {
		   SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		   Session session=sessionFactory.openSession();
		   Transaction tr=session.beginTransaction();
		   org.hibernate.Query query=session.createQuery("from UserRegisterVO where id='"+uploadvo.getid()+"'");

		   ls=query.list();
		   System.out.println("List size is" + ls.size());
		   tr.commit();
		   System.out.println(ls.size()+ "sfsfsfsfsfs");
		  }
		  catch(Exception z)
		  {
		   z.printStackTrace();
		  }
		  return ls;
	}

	public List searchdesignation(UserRegisterVO uservo)
	{
		List ls= new ArrayList();
		  try
		  {
		   SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		   Session session=sessionFactory.openSession();
		   Transaction tr=session.beginTransaction();
		   org.hibernate.Query query=session.createQuery("from UserRegisterVO where designation LIKE '%"+uservo.getDesignation()+"%'");

		   ls=query.list();
		   System.out.println("List size search of designation::: is::" + ls.size());
		   tr.commit();
		   System.out.println(ls.size()+ "sfsfsfsfsfs");
		  }
		  catch(Exception z)
		  {
		   z.printStackTrace();
		  }
		  return ls;
	}

	public List searchrole(UserRegisterVO vo) 
	{
		List ls= new ArrayList();
		  try
		  {
		   SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		   Session session=sessionFactory.openSession();
		   Transaction tr=session.beginTransaction();
		   org.hibernate.Query query=session.createQuery("from UserRegisterVO where designation LIKE '%"+vo.getDesignation()+"%'");

		   ls=query.list();
		   System.out.println("List size search of designation::: is::" + ls.size());
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

