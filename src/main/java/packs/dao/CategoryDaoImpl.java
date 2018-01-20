package packs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import packs.model.Category;


@Repository
public class CategoryDaoImpl implements CategoryDao {
	
	@Autowired
	SessionFactory sefact;
	Session se;
	Transaction tx;
	
	Category cat;
	
	List <Category> data;
	
	public CategoryDaoImpl()
	{
		data=new ArrayList<Category>();
	}

	
	public void overwrite(Category c1) {
		se=sefact.openSession();
		tx=se.beginTransaction();
		se.update(c1);
		tx.commit();
		System.out.println("Commited....");
		se.close();
		
	}


	public List<Category> showAll() {
		
		se=sefact.openSession();
		Query q=se.createQuery("from Category");// from h2 console
		 data = q.list();
		 se.close();
		 return data;
		
	}


	public Category getcategoryById(int id) {
		System.out.println("In getCategory"+id);
		  se = sefact.openSession();
		  System.out.println("session opened");
		data=this.showAll();
		for(Category c:data)
		{
			System.out.println(""+c.getId());
			if(c.getId()== id)
			{
				cat=new Category(c.getId(),c.getName(),c.getDescription());
				return cat;
			}
		}
		
		
		se.close();
		return cat;
	}


	public void removecategory(Category cc) {
		System.out.println("In remove"+cc.getId());
		se=sefact.openSession();
		tx=se.beginTransaction();
		se.delete(cc);
		tx.commit();
		se.close();
		
	}

	public void savecategory(Category c) {
		se=sefact.openSession();
		tx=se.beginTransaction();
		se.save(c);
		tx.commit();
		se.close();
		
		
	}




	public void editcategory(Category ce) {
		se=sefact.openSession();
		tx=se.beginTransaction();
		se.update(ce);
		tx.commit();
		se.close();
		
	}

	
	
	
}
