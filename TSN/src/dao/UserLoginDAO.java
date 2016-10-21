package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.management.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.RegistrationVO;
import vo.UserRegisterVO;
import vo.cityVo;
import vo.countryVO;
import vo.stateVO;



public class UserLoginDAO {
	
public List Userauthentication(UserRegisterVO Userloginvo) {
		
		List list= new ArrayList();
				
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			//org.hibernate.Query q=session.createQuery("from UserRegisterVO where email='"+Userloginvo.getEmail()+"' and password='"+Userloginvo.getPassword()+"' and salt='"+Userloginvo.getSalt()+"'"); 
			//list=q.list();
			
			org.hibernate.Query q = session.createQuery("select Userloginvo.id, Userloginvo.firstname,Userloginvo.email,Userloginvo.salt,Userloginvo.password,Userloginvo.phone,Userloginvo.lastname,Userloginvo.role,Userloginvo.filePath from UserRegisterVO Userloginvo where Userloginvo.email = '"+Userloginvo.getEmail()+"' ");
		     List<Object[]> employees= (List<Object[]>)q.list();
		     for(Object[] UserRegisterVO: employees){
		         Integer id = (Integer)UserRegisterVO[0];
		         String firstname = (String)UserRegisterVO[1];
		         String email = (String) UserRegisterVO[2];
		         String salt = (String) UserRegisterVO[3];
		         String password = (String) UserRegisterVO[4];
		         String phone = (String) UserRegisterVO[5];
		         String lastname = (String) UserRegisterVO[6];
		         String role = (String) UserRegisterVO[7];
		         String filePath = (String) UserRegisterVO[8];
		         
		         HashMap<String, String> map = new HashMap<String, String>();
		         map.put("id", ""+id);
		         map.put("firstname", ""+firstname);
		         map.put("email", ""+email);
		         map.put("salt", ""+salt);
		         map.put("password", ""+password);
		         map.put("phone",""+ phone);
		         map.put("lastname",lastname);
		         map.put("role", role);
		         map.put("filePath", filePath);
		         list.add(map);
		         System.out.println(id);
		         System.out.println(firstname);
		         System.out.println(email);
		         System.out.println("Salt is"+ salt);
		         System.out.println("password is"+ password);
		         System.out.println("phone is"+ phone);
		         System.out.println("lastname is"+ lastname);
		         System.out.println("role  is " + role);
		         System.out.println("filePath  is " + filePath);
		     }
			
			
			System.out.println("authentication list size"+employees.size());
			
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
		
		}



}
