package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;

import vo.seminarVO;
import vo.stateVO;

public class seminarDAO {

	public void createSeminar(seminarVO seminarvo) {

		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(seminarvo);
			tr.commit();
			System.out.println("Seminar details inserted.......");
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

	public List searchsemianr(seminarVO seminarvo) {
		List list= new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
//			org.hibernate.Query q=session.createQuery("from seminarVO"); 
//			list=q.list();
			list = session.createCriteria(seminarVO.class)
					.setFetchMode("firstname", FetchMode.JOIN)
					.setFetchMode("lastname", FetchMode.JOIN)
					.setFetchMode("cityName", FetchMode.JOIN)
					.setFetchMode("stateName", FetchMode.JOIN)
					.setFetchMode("countryName", FetchMode.JOIN).list();
//					.add(Restrictions.eq("stateID", 3))
//					.addOrder(Order.desc("stateName")).list();
			for (int i = 0; i < list.size(); i++) 
			{
				seminarVO objState = (seminarVO)list.get(i);
				System.out.println("list of is firstname:::"+objState.getUserregistervo().getFirstname());
				System.out.println("list of is lastname:::"+objState.getUserregistervo1().getLastname());
				System.out.println("list of is city:::"+objState.getCityvo().getCityName());
				System.out.println("list of is state:::"+objState.getCityvo().getStatevo().getStateName());
				System.out.println("list of is country:::"+objState.getCityvo().getStatevo().getCountryvo().getCountryName());
			}
			System.out.println("search seminar  list ....");
			tr.commit();
			session.close();
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return list;
		
	}

	
}
