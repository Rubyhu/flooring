package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.po.Service;
public class ServiceDao {
	public List<Service> getData(String hql){
		List<Service> list=new ArrayList<Service>();
		try{
			//����hibernate�����ļ������SessionFactory����
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			//��SessionFactory���Session����
			Session session=sessionFactory.openSession();
			//ִ��hql��䣬�������
			list=session.createQuery(hql).list();
			//��ղ��ر�session
			session.clear();
			session.close();
		}catch(Exception e){
			System.err.print(e);
		}
		return list;
	}
	public boolean addUser(Service c){
		boolean isSuccess=false;
		
		try{
			//����hibernate.cfg.xml,��ȡSessionFactory����
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			//��ȡSession����
			Session session=sessionFactory.openSession();
			//ִ��:��������
			Transaction transaction=session.beginTransaction();
			session.save(c);
			transaction.commit();
			isSuccess=true;
			session.clear();
			session.close();
		}catch(Exception e){
			System.err.print(e);
		}
		
		return isSuccess;
	}
}
