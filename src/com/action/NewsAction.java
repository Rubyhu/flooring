package com.action;

import java.util.List;



import com.dao.NewsDao;
import com.opensymphony.xwork2.ActionContext;
import com.po.News;

public class NewsAction {
	public String showAllNewsOne(){
		String hql="from News where new_typeid=1";
		NewsDao newsDao=new NewsDao();
		List<News> list=newsDao.getData(hql);
		
		ActionContext.getContext().getSession().put("AllNewsOne", list);
		
		return "ShowNewsOne";
		
		
	} 
	public String showAllNewsTwo(){
		String hql="from News where new_typeid=2";
		NewsDao newsDao=new NewsDao();
		List<News> list=newsDao.getData(hql);	
		ActionContext.getContext().getSession().put("AllNewsTwo", list);		
		return "ShowNewsTwo";
		
		
	} 
	
	public String showAllNews(){
		String hql="from News";
		NewsDao newsDao=new NewsDao();
		List<News> list=newsDao.getData(hql);	
		ActionContext.getContext().getSession().put("AllNews", list);		
		return "ShowNews";
		
		
	} 
	
	
	
	

}
