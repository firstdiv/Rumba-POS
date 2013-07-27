package com.airsystem.pos.rumba.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Budi Oktaviyan Suryanto <budi.oktaviyan@icloud.com>
 */

@Entity
@Table(name = "order", catalog = "rumba")
public class Order implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "kode", unique = true, nullable = false)
	private Long kode;

	@Temporal(TemporalType.DATE)
	@Column(name = "tanggal", length = 10, nullable = false)
	private Date tanggal;

	@Column(name = "jumlah", nullable = false)
	private Integer jumlah;

	@Column(name = "total", nullable = false)
	private Long total;

	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "orders")
	private Set<Item> items = new HashSet<Item>(0);

	public Order() {
	}

	public Order(Long kode, Date tanggal, Integer jumlah, Long total) {
		this.kode 	 = kode;
		this.tanggal = tanggal;
		this.jumlah  = jumlah;
		this.total 	 = total;
	}

	public Order(Long kode, Date tanggal, Integer jumlah, Long total, Set<Item> items) {
		this.kode 	 = kode;
		this.tanggal = tanggal;
		this.jumlah  = jumlah;
		this.total 	 = total;
		this.items 	 = items;
	}

	public Long getKode() {
		return kode;
	}

	public void setKode(Long kode) {
		this.kode = kode;
	}

	public Date getTanggal() {
		return tanggal;
	}

	public void setTanggal(Date tanggal) {
		this.tanggal = tanggal;
	}

	public Integer getJumlah() {
		return jumlah;
	}

	public void setJumlah(Integer jumlah) {
		this.jumlah = jumlah;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public Set<Item> getItems() {
		return items;
	}

	public void setItems(Set<Item> items) {
		this.items = items;
	}
}