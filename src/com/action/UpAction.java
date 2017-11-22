
package com.action;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.ServiceDao;
import com.dao.ContactDao;
import com.dao.NewsDao;
import com.dao.ProDao;
import com.dao.ProDetDao;
import com.dao.UserDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.po.Service;
import com.po.Contact;
import com.po.News;
import com.po.Pro;
import com.po.ProDet;
import com.po.User;

public class UpAction extends ActionSupport implements ServletRequestAware {
	 private javax.servlet.http.HttpServletResponse response;
	 private javax.servlet.http.HttpServletRequest request;
	/**  new table **/
	private String new_title;
    private String new_txt;
    private String new_data;
    private Integer new_typeid;//1,2
   
    /**  service table **/
    private String promis;
    private String knowage;
    private String ser_title;
    
    
    /**  pro table **/
    
    private String pro_title;
    private String tit_id;//1....7
    
    private Integer pro_id;
    private String pro_tit;
    private String pro_txt;
    private String pro_name;
    private String pro_color;
    private String pro_from;
    private String pro_namet;
    private String size;
   
    /**  contact table **/
    private String con_name;
    private String con_txt;
    private String con_phone;
    private String con_mail;
    private String con_address;
    private String con_message;

    
    
    
	public String getNew_title() {
		return new_title;
	}

	public void setNew_title(String new_title) {
		this.new_title = new_title;
	}

	public String getNew_txt() {
		return new_txt;
	}

	public void setNew_txt(String new_txt) {
		this.new_txt = new_txt;
	}

	public String getNew_data() {
		return new_data;
	}

	public void setNew_data(String new_data) {
		this.new_data = new_data;
	}

	public Integer getNew_typeid() {
		return new_typeid;
	}

	public void setNew_typeid(Integer new_typeid) {
		this.new_typeid = new_typeid;
	}

	public String getPromis() {
		return promis;
	}

	public void setPromis(String promis) {
		this.promis = promis;
	}

	public String getKnowage() {
		return knowage;
	}

	public void setKnowage(String knowage) {
		this.knowage = knowage;
	}

	public String getSer_title() {
		return ser_title;
	}

	public void setSer_title(String ser_title) {
		this.ser_title = ser_title;
	}

	public String getPro_title() {
		return pro_title;
	}

	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}

	public String getTit_id() {
		return tit_id;
	}

	public void setTit_id(String tit_id) {
		this.tit_id = tit_id;
	}

	public Integer getPro_id() {
		return pro_id;
	}

	public void setPro_id(Integer pro_id) {
		this.pro_id = pro_id;
	}

	public String getPro_tit() {
		return pro_tit;
	}

	public void setPro_tit(String pro_tit) {
		this.pro_tit = pro_tit;
	}

	public String getPro_txt() {
		return pro_txt;
	}

	public void setPro_txt(String pro_txt) {
		this.pro_txt = pro_txt;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_color() {
		return pro_color;
	}

	public void setPro_color(String pro_color) {
		this.pro_color = pro_color;
	}

	public String getPro_from() {
		return pro_from;
	}

	public void setPro_from(String pro_from) {
		this.pro_from = pro_from;
	}

	public String getPro_namet() {
		return pro_namet;
	}

	public void setPro_namet(String pro_namet) {
		this.pro_namet = pro_namet;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getCon_name() {
		return con_name;
	}

	public void setCon_name(String con_name) {
		this.con_name = con_name;
	}

	public String getCon_txt() {
		return con_txt;
	}

	public void setCon_txt(String con_txt) {
		this.con_txt = con_txt;
	}

	public String getCon_phone() {
		return con_phone;
	}

	public void setCon_phone(String con_phone) {
		this.con_phone = con_phone;
	}

	public String getCon_mail() {
		return con_mail;
	}

	public void setCon_mail(String con_mail) {
		this.con_mail = con_mail;
	}

	public String getCon_address() {
		return con_address;
	}

	public void setCon_address(String con_address) {
		this.con_address = con_address;
	}

	public String getCon_message() {
		return con_message;
	}

	public void setCon_message(String con_message) {
		this.con_message = con_message;
	}
	 private File file;
	 private String fileFileName;
    
	 private String fileContentType;

  

   
    
    public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	//获得HttpServletRequest对象
	 public void setServletRequest(HttpServletRequest request) {
		  this.request = request;
		 }
	public String  addNewInfo() throws Exception
    {
    	if (this.new_title == null || this.new_title.equals("")
				|| this.new_txt == null || this.new_txt.equals("")||
				this.new_data==null||this.new_data.equals("")||
				this.new_typeid==null||this.new_typeid.equals("")||this.file==null
				||this.fileFileName.equals("")) {
			ActionContext.getContext().put("mess", "输入不能为空！");
			return "addError";
		  }
    	if(up().equals("UpSuccess"))
    	{
	    	News s=new News();
	    	s.setTitle(this.new_title);
	    	s.setTxt(this.new_txt);
	    	s.setData(this.new_data);
	    	s.setPic("images/"+fileFileName);
	    	s.setNew_typeid(this.new_typeid);
	    	NewsDao  dao=new NewsDao();
	        if(dao.addUser(s))
	        {    
	        	ActionContext.getContext().put("mess", "添加成功！");
	        	return "addNewsSuccess";
	        }
	        else
	        {   ActionContext.getContext().put("mess", "添加失败");
	        	return "addNewsError";
	        }
    	}
    	else
    	{
    		    ActionContext.getContext().put("mess", "图片上传失败");
	        	return "addNewsError";
    	}
	
    	
    }
    public String up() throws Exception
    {
    	java.io.InputStream is = new java.io.FileInputStream(file);
    	String address = request.getSession().getServletContext().getRealPath("/images")+"/" + fileFileName;
    	String relatedAddress = "image"+ "/"+ "/" + fileFileName;
    	String root = ServletActionContext.getServletContext().getContextPath()+"\\WebContent\\images";
    	java.io.OutputStream os = new java.io.FileOutputStream(address);
    	byte buffer[] = new byte[99999];
    	  int count = 0;
    	  while ((count = is.read(buffer)) > 0) {
    	   os.write(buffer, 0, count);
    	  }
    	  os.close();
    	  is.close();
        
        return "UpSuccess";
    }
    
    
    public String  addproInfo() throws Exception
    {
    	if (this.pro_title == null || this.pro_title.equals("")
				|| this.tit_id == null || this.tit_id.equals("")||
				this.file==null
				||this.fileFileName.equals("")) {
			ActionContext.getContext().put("mess", "输入不能为空！");
			return "addproError";
		  }
    	if(up().equals("UpSuccess"))
    	{
	    	Pro n=new Pro();
	    	n.setTitle(this.pro_title);
	    	n.setTit_id(this.tit_id);
	    	n.setPic("images/"+fileFileName);
	    	ProDao  dao=new ProDao();
	        if(dao.addUser(n))
	        {   
	        	
	        	ActionContext.getContext().put("mess", "添加成功！");
	        	String hql="from Pro";
	    		ProDao proDao=new ProDao();
	    		List<Pro> list=proDao.getData(hql);
	    		ActionContext.getContext().getSession().put("Allpro", list);
	        	return "addproSuccess";
	        }
	        else
	        {   ActionContext.getContext().put("mess", "添加失败");
	        	return "addproError";
	        }
    	}
    	else
    	{
    		    ActionContext.getContext().put("mess", "图片上传失败");
	        	return "addProError";
    	}
	
    	
    }
    
    
    public String  addproDelInfo() throws Exception
    {
    	if (this.pro_id == null || this.pro_id.equals("")
				|| this.pro_tit == null || this.pro_tit.equals("")||
				this.pro_txt == null || this.pro_txt.equals("")||
				this.pro_name == null || this.pro_name.equals("")||
				this.pro_color== null || this.pro_color.equals("")||
				this.pro_from== null || this.pro_from.equals("")||
				this.pro_namet== null || this.pro_namet.equals("")||
				this.size== null || this.size.equals("")||
				this.file==null
				||this.fileFileName.equals("")) {
			ActionContext.getContext().put("mess", "输入不能为空！");
			return "addproDelError";
		  }
    	if(up().equals("UpSuccess"))
    	{
	    	ProDet n=new ProDet();
	    	n.setPro_id(this.pro_id);
	    	n.setTit(this.pro_tit);
	    	n.setTxt(this.pro_txt);
	    	n.setName(this.pro_name);
	    	n.setColor(this.pro_color);
	    	n.setForm(this.pro_from);
	    	n.setNamet(this.pro_namet);
	    	n.setSize(this.size);
	    	n.setPic("images/"+fileFileName);
	    	ProDetDao  dao=new ProDetDao();
	        if(dao.addUser(n))
	        {    
	           
	        	ActionContext.getContext().put("mess", "添加成功！");
	        	return "addproDelSuccess";
	        }
	        else
	        {   ActionContext.getContext().put("mess", "添加失败");
	        	return "addproDelError";
	        }
    	}
    	else
    	{
    		    ActionContext.getContext().put("mess", "图片上传失败");
	        	return "addproDelError";
    	}
	
    	
    }
    public String  addserviceInfo() throws Exception
    {
    	if (this.promis == null || this.promis.equals("")
				|| this.knowage == null || this.knowage.equals("")||
				this.ser_title==null
				||this.ser_title.equals("")) {
			ActionContext.getContext().put("mess", "输入不能为空！");
			return "addserviceError";
		  }
    
	    	Service c=new Service();
	    	c.setPromis(this.promis);
	    	c.setKnowage(this.knowage);
	    	c.setTitle(this.ser_title);
	    	ServiceDao  dao=new ServiceDao();
	        if(dao.addUser(c))
	        {    
	        	ActionContext.getContext().put("mess", "添加成功！");
	        	return "addserviceSuccess";
	        }
	        else
	        {   ActionContext.getContext().put("mess", "添加失败");
	        	return "addserviceError";
	        }
    	
    	
    }
    
    
}