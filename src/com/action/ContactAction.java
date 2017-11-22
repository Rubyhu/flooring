package com.action;

import java.util.List;

import com.dao.ContactDao;
import com.dao.ContactDao;
import com.dao.NewsDao;
import com.opensymphony.xwork2.ActionContext;
import com.po.Contact;
import com.po.Contact;
import com.po.News;

public class ContactAction {
	// 接收用户提交的数据
	private String contactid;
	private String tusername;// 表单的name
	private String temail;
	private String tphone;
	private String tmessage;
	private String taddress;



	public String getContactid() {
		return contactid;
	}

	public void setContactid(String contactid) {
		this.contactid = contactid;
	}

	public String getTusername() {
		return tusername;
	}

	public void setTusername(String tusername) {
		this.tusername = tusername;
	}

	public String getTemail() {
		return temail;
	}

	public void setTemail(String temail) {
		this.temail = temail;
	}

	public String getTphone() {
		return tphone;
	}

	public void setTphone(String tphone) {
		this.tphone = tphone;
	}

	public String getTmessage() {
		return tmessage;
	}


	public void setTmessage(String tmessage) {
		this.tmessage = tmessage;
	}


	public String getTaddress() {
		return taddress;
	}


	public void setTaddress(String taddress) {
		this.taddress = taddress;
	}
	
	public String showAllContact(){
		String hql="from Contact";
		ContactDao contactDao=new ContactDao();
		List<Contact> list=contactDao.getData(hql);
		
		ActionContext.getContext().getSession().put("AllContact", list);
		
		return "ShowContact";
	}
	
	
	public String regContact() {
		if (this.tusername == null || this.tphone == null || this.temail == null|| this.tmessage == null) {
			ActionContext.getContext().put("messContact", "不能为空！");
			return "regContactError";
		}
		if (this.tusername.equals("Name") || this.tphone.equals("Phone")
				|| this.temail.equals("E-mail")|| this.tmessage.equals("Message")) {
			ActionContext.getContext().put("messContact", "不能为空！");
			return "regContactError";
		}
		// 处理数据
		
		Contact Contact = new Contact();
		Contact.setName(this.tusername);
		Contact.setPhone(this.tphone);
		Contact.setMail(this.temail);
		Contact.setAddress(this.taddress);
		Contact.setMessage(this.tmessage);
		ContactDao ContactDao1 = new ContactDao();		
		if (ContactDao1.addContact(Contact)) {			
			String hql="from Contact";
			ContactDao contactDao=new ContactDao();
			List<Contact> list=contactDao.getData(hql);
			ActionContext.getContext().getSession().put("AllContact", list);
			
			return "regContactSuccess";			
		}
		ActionContext.getContext().put("messContact", "留言失败！");
		return "regContactError";
	}
	public String delContact(){
		Contact contact=new Contact();
		contact.setId(Integer.parseInt(this.getContactid()));
		ContactDao contactDao=new ContactDao();
		contactDao.delContact(contact);
		String hql="from Contact";
		ContactDao contactDao2=new ContactDao();
		List<Contact> list=contactDao2.getData(hql);
		
		ActionContext.getContext().getSession().put("AllContact", list);
		return "delItem";
		
	}	
}
