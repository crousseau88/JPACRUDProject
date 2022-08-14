package com.skilldistillery.sneakers.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.sneakers.data.SnkrDAO;
import com.skilldistillery.sneakers.entities.SneakerInventory;

@Controller
public class SneakerInventoryController {
	@Autowired
	private SnkrDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("shoes", dao.findAll());
		return "index";
	}

	@RequestMapping(path = "getSneaker.do")
	public String getShoeByStyle(String style, Model model) {
		List<SneakerInventory> snkr = dao.findByStyle(style);
		model.addAttribute("shoes", snkr);
		return "show";
	}

	@RequestMapping(path = "addShoe.do")
	public String addShoe(SneakerInventory sneaker) {
		return "addShoe";
	}
	
	@RequestMapping(path = "addSuccessful.do")
	public String addedShoe(SneakerInventory sneaker, Model model) {
		dao.createShoe(sneaker);
		model.addAttribute("shoe", sneaker);
		return "addSuccessful";
	}

	
	 @RequestMapping(path= "getId.do")
	  public String getId(Integer id, Model model) {
		  SneakerInventory snkr = dao.findById(id);
		  model.addAttribute("shoes", snkr);
		  return "showbyid";
	  }
	@RequestMapping(path = "deleted.do")
	public String deleteShoe(int id) {
		SneakerInventory shoe = dao.findById(id);
		dao.deleteShoe(id);
		
		return "deleted";
	}
	@RequestMapping(path = "updatedShoe.do")
	public String updateShoe(Integer id, Model model) {
		SneakerInventory shoe = dao.findById(id);
		System.out.println(shoe +"shoe");
		model.addAttribute("shoe", shoe);
		return "updatedShoe";
	}
	@RequestMapping(path = "updatedSuccessful.do" )
	public String updatedShoeSuccessful(SneakerInventory sneaker, Integer id,  Model model) {
	dao.updateShoe(id, sneaker);
	model.addAttribute("shoe", sneaker);
		return "updatedSuccessful";
	}
}
