package com.huanying.risk.goods;

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

@Entity
public class Goods implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5308456933700334714L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name = "sub_class_id")
	private GoodsSubClass goodsSubClass;
	private String code;
	private String name;
	private Date buy_date;
	private float price;
	private Date off_date;
	private String remark;
	@Column(name="status",nullable=false,columnDefinition="INT default 1")
	private int status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public GoodsSubClass getGoodsSubClass() {
		return goodsSubClass;
	}
	public void setGoodsSubClass(GoodsSubClass goodsSubClass) {
		this.goodsSubClass = goodsSubClass;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(Date buy_date) {
		this.buy_date = buy_date;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Date getOff_date() {
		return off_date;
	}
	public void setOff_date(Date off_date) {
		this.off_date = off_date;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
