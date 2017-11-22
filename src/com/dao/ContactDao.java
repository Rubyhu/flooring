package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.po.Contact;

public class ContactDao {
	public List<Contact> getData(String hql){
		List<Contact> list=new ArrayList<Contact>();
		try{
			//加载hibernate配置文件，获得SessionFactory对象
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			//从SessionFactory获得Session对象
			Session session=sessionFactory.openSession();
			//执行hql语句，获得数据
			list=session.createQuery(hql).list();
			//清空并关闭session
			session.clear();
			session.close();
		}catch(Exception e){
			System.err.print(e);
		}
		return list;
	}
	public boolean addContact(Contact n){
		boolean isSuccess=false;
		
		try{
			//加载hibernate.cfg.xml,获取SessionFactory对象
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			//获取Session对象
			Session session=sessionFactory.openSession();
			//执行:启动事务
			Transaction transaction=session.beginTransaction();
			session.saveOrUpdate(n);
			transaction.commit();
			isSuccess=true;
			session.clear();
			session.close();
		}catch(Exception e){
			System.err.print(e);
		}
		
		return isSuccess;
	}
	public boolean delContact(Contact n){
		boolean isSuccess=false;
		try{
			//加载hibernate.cfg.xml,获取SessionFactory对象
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			//获取Session对象
			Session session=sessionFactory.openSession();
			//执行:启动事务
			Transaction transaction=session.beginTransaction();
			session.delete(n);
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
