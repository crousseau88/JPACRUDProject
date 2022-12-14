package com.skilldistillery.sneakers.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SneakerInventoryTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	
	private SneakerInventory snkrs;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPASneakerInventory");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		snkrs = em.find(SneakerInventory.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		snkrs = null;
	}

	@Test
	void test() {
		assertNotNull(snkrs);
		assertEquals("HP6674", snkrs.getStyle());
		assertEquals("M", snkrs.getGender());
		assertEquals(5.0, snkrs.getSize());
		assertEquals("249.00", snkrs.getPrice());
		assertEquals("YEEZY", snkrs.getBrand());
		assertEquals(false, snkrs.getDescription().contains("The adidas Yeezy Boost"));
	}

}
