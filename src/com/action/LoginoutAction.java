package com.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class LoginoutAction {
	public String Loginout()
	{
		HttpSession session=ServletActionContext.getRequest().getSession();
	    session.invalidate();
		return "outSussess";
		
	}
}

