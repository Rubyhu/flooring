package com.action;

import java.util.List;

import com.dao.ServiceDao;
import com.dao.UserDao;
import com.opensymphony.xwork2.ActionContext;
import com.po.Service;
import com.po.User;

public class UserAction {
	// �����û��ύ������
	private String userName;// ����name
	private String pwd;
	private String pwd1;
	private String sex;
	private String uabout;



	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPwd1() {
		return pwd1;
	}

	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUabout() {
		return uabout;
	}

	public void setUabout(String uabout) {
		this.uabout = uabout;
	}

	public String login() {
		// ��֤����
		if (this.userName == null || this.userName.equals("")
				|| this.pwd == null || this.pwd.equals("")) {
			ActionContext.getContext().put("mess", "����Ϊ�գ�");
			return "loginError";
		}
		// ��������
		String hql = "from User where username='" + this.userName
				+ "' and password='" + this.pwd + "'";
		UserDao userDao = new UserDao();
		List<User> list = userDao.getData(hql);
		if (list.size() > 0) {// ��¼�ɹ�
			// HttpSession session=request.getSession();
			// session.setAttribute("userInfo", list.get(0));
			ActionContext.getContext().getSession()
					.put("userInfo", list.get(0));
			return "loginSuccess";
		} else {
			ActionContext.getContext().put("mess", "�û��������벻��ȷ");
			return "loginError";
		}

	}

	public String logout() {
		ActionContext.getContext().getSession().clear();
		return "logoutSuccess";
	}

	public String reg() {
		if (this.userName == null || this.pwd == null || this.pwd1 == null) {
			ActionContext.getContext().put("mess", "����Ϊ�գ�");
			return "regError";
		}
		if (this.userName.equals("") || this.pwd.equals("")
				|| this.pwd1.equals("")) {
			ActionContext.getContext().put("mess", "����Ϊ�գ�");
			return "regError";
		}
		// ��������
		if (!this.pwd.equals(pwd1)) {
			ActionContext.getContext().put("mess", "���벻һ�£�");
			return "regError";

		}
		String hql = "from User where username='" + this.userName
				+ "' and password='" + this.pwd + "'";
		UserDao userDao = new UserDao();
		List<User> list = userDao.getData(hql);
		if (list.size() > 0) {
			ActionContext.getContext().put("mess", "�û����Ѵ��ڣ�");
			return "regError";
		}
		// ������ݵ����ݿ�
		// String[]->String
		/***
		String interest1 = "";
		for (int i = 0; i < interest.length; i++) {
			interest1 = interest1 + this.interest[i] + ",";
		}
		// ȥ������,
		if (!interest1.equals("")) {
			interest1 = interest1.substring(0, interest1.length() - 1);

		}****/
		User user = new User();
		user.setUsername(this.userName);
		user.setPassword(this.pwd);
		user.setSex(this.sex);
	    user.setAboutus(this.uabout);
		UserDao userDao1 = new UserDao();
		if (userDao1.addUser(user)) {
			return "regSuccess";
		}
		ActionContext.getContext().put("mess", "ע��ʧ�ܣ�");
		return "regError";

	}
		public String showOneUser(){			
				String hql="from User where id=1";
				UserDao userDao=new UserDao();
				List<User> list=userDao.getData(hql);				
				ActionContext.getContext().getSession().put("OneUser", list);
				return "ShowUser";
				
				
			} 
}
