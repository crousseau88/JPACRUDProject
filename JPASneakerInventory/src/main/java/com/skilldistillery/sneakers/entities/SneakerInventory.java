package com.skilldistillery.sneakers.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "sneaker_inventory")
public class SneakerInventory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String sku;

	public SneakerInventory() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	@Override
	public String toString() {
		return "SneakerInventory [id=" + id + ", sku=" + sku + "]";
	}

}
