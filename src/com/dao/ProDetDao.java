package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.po.ProDet;

public class ProDetDao {
	public List<ProDet> getData(String hql){
		List<ProDet> list=new ArrayList<ProDet>();
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
	public boolean addUser(ProDet s){
		boolean isSuccess=false;
		
		try{
			//����hibernate.cfg.xml,��ȡSessionFactory����
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			//��ȡSession����
			Session session=sessionFactory.openSession();
			//ִ��:��������
			Transaction transaction=session.beginTransaction();
			session.save(s);
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
