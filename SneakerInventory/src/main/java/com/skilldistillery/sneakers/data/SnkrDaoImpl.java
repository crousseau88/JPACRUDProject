package com.skilldistillery.sneakers.data;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.sneakers.entities.SneakerInventory;

@Service
@Transactional
public class SnkrDaoImpl implements SnkrDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<SneakerInventory> findAll() {
		String jpql = "SELECT s FROM SneakerInventory s";

		return em.createQuery(jpql, SneakerInventory.class).getResultList();
	}
	
	@Override
	public SneakerInventory createShoe(SneakerInventory sneaker) {
		em.persist(sneaker);
		;
		return sneaker;
	}

	@Override
	public SneakerInventory updateShoe(int id, SneakerInventory shoe) {
		SneakerInventory snkrUpdate = em.find(SneakerInventory.class, id);

		if (snkrUpdate != null) {
			snkrUpdate.setstyle(shoe.getstyle());
			snkrUpdate.setGender(shoe.getGender());
			snkrUpdate.setSize(shoe.getSize());
			snkrUpdate.setPrice(shoe.getPrice());
			snkrUpdate.setBrand(shoe.getBrand());
			snkrUpdate.setDescription(shoe.getDescription());

		}

		return snkrUpdate;
	}

	@Override
	public List<SneakerInventory> findByStyle(String style) {
		List<SneakerInventory> stylesList = new ArrayList<>();

		String jpql = "SELECT s FROM SneakerInventory s WHERE s.style LIKE :style";
		stylesList = em.createQuery(jpql, SneakerInventory.class).setParameter("style", "%" + style + "%")
				.getResultList();
		return stylesList;
	}

	@Override
	public List<SneakerInventory> findByDescription(List<SneakerInventory> description) {
		String jpql = "SELECT s FROM SneakerInventory s WHERE s.description LIKE :description";

		return em.createQuery(jpql, SneakerInventory.class).getResultList();
	}

	@Override
	public List<SneakerInventory> findByBrand(List<SneakerInventory> description) {
		String jpql = "SELECT s FROM SneakerInventory s WHERE s.brand LIKE :brand";

		return em.createQuery(jpql, SneakerInventory.class).getResultList();
	}

	  @Override
	    public boolean deleteShoe(int id) {
	        boolean successful = false;
	        SneakerInventory deletedShoe = em.find(SneakerInventory.class, id);

	        if (deletedShoe != null) {
	            em.remove(deletedShoe);
	            
	            successful = em.contains(deletedShoe);
	        }

	        return successful;
	    }
	  
	@Override
	public List<SneakerInventory> findByGender(String gender) {
		List<SneakerInventory> genders = new ArrayList<>();
		String jpql = "SELECT s FROM SneakerInventory s WHERE s.gender LIKE :gender";
		genders = em.createQuery(jpql, SneakerInventory.class).setParameter("gender", "%" + gender + "%")
				.getResultList();
		return genders;
	}

	@Override
	public List<SneakerInventory> findById(Integer id) {
		List<SneakerInventory> stylesList = new ArrayList<>();

		String jpql = "SELECT s FROM SneakerInventory s WHERE s.id LIKE :id";
		stylesList = em.createQuery(jpql, SneakerInventory.class).setParameter("id", "%" + id + "%")
				.getResultList();
		return stylesList;
	}

	
	
}
