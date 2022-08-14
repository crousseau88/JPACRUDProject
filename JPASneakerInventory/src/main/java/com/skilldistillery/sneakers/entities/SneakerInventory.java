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
	private String style;
	private String gender;
	private double size;
	private String price;
	private String brand;
	private String description;

	public SneakerInventory() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getstyle() {
		return style;
	}

	public void setstyle(String style) {
		this.style = style;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public double getSize() {
		return size;
	}

	public void setSize(double size) {
		this.size = size;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "SneakerInventory [id=" + id + ", style=" + style + ", gender=" + gender + ", size=" + size + ", price="
				+ price + ", brand=" + brand + ", description=" + description + "]";
	}
}
