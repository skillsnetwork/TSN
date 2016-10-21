package dao;

import java.util.ArrayList;
import java.util.List;

import javax.management.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.ProfileVO;
import vo.UserProfileVO;
import vo.UserRegisterVO;



public class ProfileDAO {

	public void insertuserdetails(ProfileVO vo) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(vo);
			tr.commit();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("Updated Succesfully");
		
	}

	public void updateprofile(UserRegisterVO uploadvo) {
		// TODO Auto-generated method stub
		try{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			org.hibernate.Query q= session.createQuery("UPDATE UserRegisterVO SET filePath = '"+uploadvo.getFilePath() +"' WHERE id= '"+uploadvo.getid()+"'");
		    q.executeUpdate();
			
			Transaction tr = session.beginTransaction();
			
//			session.saveOrUpdate(uploadvo);
			tr.commit();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}	
		System.out.println("Updated Succesfully");
	}

	public List searchprofile(UserRegisterVO uploadvo) {
		List ls= new ArrayList();
		  try
		  {
		   SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		   Session session=sessionFactory.openSession();
		   Transaction tr=session.beginTransaction();
		   org.hibernate.Query query=session.createQuery("from UserRegisterVO where id='"+uploadvo.getid()+"'");

		   ls=query.list();
		   System.out.println("List size after fetching profile pic  is" + ls.size());
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
