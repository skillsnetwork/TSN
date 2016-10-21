package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.OTPVO;
import vo.UserRegisterVO;


public class FpasswdDAO {
public List authentication(UserRegisterVO passwdvo) {
		
		List list= new ArrayList();
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+passwdvo.getEmail()+"'"); 
			list=q.list();
			System.out.println("authentication list size"+list.size());
			System.out.println(passwdvo.getEmail());
			System.out.println("Matched WEmial firstname   " + passwdvo.getFirstname());
			
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
		
		}


public void insert(OTPVO otpvo) 
{
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(otpvo);
		tr.commit();
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}	
	System.out.println("insert run");
}

public List search(OTPVO otpvo1) 
{
	List list= new ArrayList();
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		org.hibernate.Query q1=session.createQuery("from OTPVO where email1='"+otpvo1.getEmail1()+"'"); 
		list=q1.list();
		System.out.println("EMAIL ON SEARCH AFTER PASSWORD MACTH " + otpvo1.getEmail1());
		tr.commit();
		
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}	
	System.out.println("insert run");
	return list;
}

public List resetpasswd(OTPVO resetpasswd) 
{
	List list= new ArrayList();
//	List list1= new ArrayList();
	//List list2= new ArrayList();
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		org.hibernate.Query resetpasswd1=session.createQuery("from OTPVO where otp1='"+resetpasswd.getOtp1()+"' and email1='"+resetpasswd.getEmail1()+"'"); 
		//org.hibernate.Query expireTime=session.createQuery("from OTPVO where expireTime='"+resetpasswd.getExpireTime()+"'");
		//org.hibernate.Query expireemail=session.createQuery("from OTPVO where email1='"+resetpasswd.getEmail1()+"'");
		list=resetpasswd1.list();
		//list1=expireTime.list();
		//list2=expireemail.list();
		tr.commit();
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}	
	System.out.println("insert run");
	return list;
}

public List checkotp(OTPVO vo) 
{
	List list= new ArrayList();
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		org.hibernate.Query resetpasswd1=session.createQuery("from OTPVO where email1='"+vo.getEmail1()+"'"); 
		list=resetpasswd1.list();
		tr.commit();
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}	
	System.out.println("search run");
	return list;
}

public void updateotp(OTPVO newotp) 
{
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(newotp);
		tr.commit();
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}	
	System.out.println("insert run");
	
}

public List recheckotp(OTPVO vo) 
{
	List list= new ArrayList();
	try
	{
		SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session =sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		org.hibernate.Query resetpasswd1=session.createQuery("from OTPVO where email1='"+vo.getEmail1()+"'"); 
		list=resetpasswd1.list();
		tr.commit();
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
	}	
	System.out.println("search run");
	return list;
}

}

