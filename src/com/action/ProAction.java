package com.action;

import java.util.List;

import com.dao.ProDao;
import com.opensymphony.xwork2.ActionContext;
import com.po.Pro;
import com.po.ProDet;


public class ProAction {
	private Integer idd;
	


	public Integer getIdd() {
		return idd;
	}
	public void setIdd(Integer idd) {
		this.idd = idd;
	}
	public String showAllPro(){
		String hql="from Pro";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("Allpro", list);
		return "ShowAllPro";		
	} 
	public String showAllProOne(){
		String hql="from Pro where tit_id=1";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("AllproOne", list);
		return "ShowProOne";		
	} 
	public String showAllProTwo(){
		String hql="from Pro where tit_id=2";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("AllproTwo", list);
		return "ShowProTwo";		
	}
	public String showAllProThree(){
		String hql="from Pro where tit_id=3";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("AllproThree", list);
		return "ShowProThree";		
	}
	public String showAllProFour(){
		String hql="from Pro where tit_id=4";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("AllproFour", list);
		return "ShowProFour";		
	}
	public String showAllProFive(){
		String hql="from Pro where tit_id=5";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("AllproFive", list);
		return "ShowProFive";		
	}
	public String showAllProSix(){
		String hql="from Pro where tit_id=6";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("AllproSix", list);
		return "ShowProSix";		
	}
	public String showAllProSever(){
		String hql="from Pro where tit_id=7";
		ProDao proDao=new ProDao();
		List<Pro> list=proDao.getData(hql);
		ActionContext.getContext().getSession().put("AllproSever", list);
		return "ShowProSever";		
	}
	
	
	public String getPro(){
		String url="from ProDet where pro_id=" + this.idd;
		//String url="from Pro a,ProDet b where pro_id=" + this.idd+" and a.id=b.Pro_id";
		ProDao ProDao=new ProDao();
		List<Pro> list=ProDao.getData(url);
		//ActionContext.getContext().put("ProInfo", list);
		ActionContext.getContext().getSession().put("ProInfo", list);
		return "showboth";
		
	}
	
	

}
