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
	public boolean addUser(Service c){
		boolean isSuccess=false;
		
		try{
			//加载hibernate.cfg.xml,获取SessionFactory对象
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			//获取Session对象
			Session session=sessionFactory.openSession();
			//执行:启动事务
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
