package com.action;

import java.util.List;


import com.dao.ServiceDao;
import com.opensymphony.xwork2.ActionContext;
import com.po.Service;


public class ServiceAction {
	public String showAllService(){
		
		String hql="from Service";
		ServiceDao serviceDao=new ServiceDao();
		List<Service> list=serviceDao.getData(hql);
		
		ActionContext.getContext().getSession().put("AllService", list);
		return "ShowService";
		
		
	} 
	

}
