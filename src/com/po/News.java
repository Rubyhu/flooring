package com.po;

public class News {
	private Integer id;
	private String title;
	private String txt;
	private String data;
	private String pic;
	private Integer new_typeid;
	//int, Character, Float, Double,Boolean,Long,Short,Byte
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		this.txt = txt;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Integer getNew_typeid() {
		return new_typeid;
	}
	public void setNew_typeid(Integer new_typeid) {
		this.new_typeid = new_typeid;
	}
	
	
}