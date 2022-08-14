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
		return "snkrs/show";
	}

	@RequestMapping(path = "addShoe.do")
	public String addShoe(SneakerInventory shoe) {
		return "addShoe";
	}

	@RequestMapping(path = "getDescription.do")
	public String getShoeByDescription(List<SneakerInventory> description, Model model) {
		List<SneakerInventory> shoe = dao.findByDescription(description);
		model.addAttribute("shoe", shoe);
		return "snkrs/show";
	}
	
	@RequestMapping(path = "getId.do")
 String getById(Integer id, Model model) {
		List<SneakerInventory> snkr = dao.findById(id);
		model.addAttribute("shoes", snkr);
		
		return "snkrs/show";
		
	}
	
}
