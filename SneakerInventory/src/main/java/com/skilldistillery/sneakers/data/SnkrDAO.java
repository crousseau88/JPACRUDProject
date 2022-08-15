package com.skilldistillery.sneakers.data;

import java.util.List;

import com.skilldistillery.sneakers.entities.SneakerInventory;

public interface SnkrDAO {

	SneakerInventory createShoe(SneakerInventory sneaker);

	SneakerInventory updateShoe(int id, SneakerInventory sneaker);

	List<SneakerInventory> findByStyle(String style);

	List<SneakerInventory> findAll();

	boolean deleteShoe(int id);



	SneakerInventory findById(int id);
}
