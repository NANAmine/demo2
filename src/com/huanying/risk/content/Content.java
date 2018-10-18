package com.huanying.risk.content;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.huanying.framework.user.User;

@Entity
public class Content implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5894103678062160211L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String description;
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name = "class_id")
	private ContentClass contentClass;
	private Date create_date;
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name = "create_user_id")
	private User user;
	@Column(name="status",nullable=false,columnDefinition="INT default 1")
	private int status;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public ContentClass getContentClass() {
		return contentClass;
	}
	public void setContentClass(ContentClass contentClass) {
		this.contentClass = contentClass;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
