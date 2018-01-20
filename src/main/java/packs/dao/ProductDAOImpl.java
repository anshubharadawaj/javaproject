package packs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import packs.model.Cart;
import packs.model.Product;

@Repository
@Transactional
public  class ProductDAOImpl  implements ProductDAO{
	
	@Autowired
	SessionFactory sfact;
	Session sess;
	Transaction tx;
	Product prd;
	
	List <Product> data;
	
	public ProductDAOImpl()
	{
		data=new ArrayList<Product>();
	}
	
	public void saveProduct(Product p1) {
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.save(p1);
		tx.commit();
		
	}
	
	public void overwrite(Product p) {
		this.sfact.getCurrentSession().update(p);
		
	}
	
	public List <Product> showAll() {
		sess=sfact.openSession();
		Query q=sess.createQuery("from Product");// from h2 console
		data=q.list();
		return data;
	
	
	}

	public Product getproductById(int id) {
		Product p;
		if( sfact.getCurrentSession().createQuery("from Product where id=:id").setInteger("id", id).list().size() == 0)
			return null;
		else
			return (Product)sfact.getCurrentSession().createQuery("from Product where id=:id").setInteger("id", id).list().get(0);
		
		
	}

	
	
	public void removeproduct(Product pp) {
		System.out.println("In remove"+pp.getId());
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.delete(pp);
		tx.commit();
		sess.close();
		
	}

	public void editproduct(Product prob) {
	
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.update(prob);
		tx.commit();
		sess.close();
		
	}

	
}
