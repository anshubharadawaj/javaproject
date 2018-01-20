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
public  class CartDaoImpl implements CartDao {
	
	@Autowired
	SessionFactory sfact;
	
	
	public void saveCart(Cart crt) {
		sfact.getCurrentSession().save(crt);
		
	}
	
	public List<Cart> showAll() {
		return sfact.getCurrentSession().createQuery("from Cart").list();
	}

	public Cart getcartById(int id) {
		return(Cart)sfact.getCurrentSession().createQuery("from Cart where id=:id").setInteger("id",id).list().get(0);
	
	}
		public void editcart(Cart crt5) {
		this.sfact.getCurrentSession().update(crt5);
	
	}
	public List<Cart> getAllCart() {
		return (List<Cart>)this.sfact.getCurrentSession().createQuery("from Cart").list();
		
	}
	public void removecart(int crt4) {
		System.out.println(sfact.getCurrentSession().createQuery("delete from Cart where id=:id").setInteger("id", crt4).executeUpdate());
		
	}

	
		public void update(String username, String ship,String bill) {
			this.sfact.getCurrentSession().createQuery("update Cart set shippingaddress = :ship, billingaddress= :bill  where username=:user").setString("ship", ship).setString("bill", bill).setString("user", username).executeUpdate();
			
		}

		public void delete(int pid) {
			this.sfact.getCurrentSession().createQuery("delete from Cart where id=:id").setInteger("id", pid).executeUpdate();
			
		}
		/*public void update(Cart ca) {
			this.sfact.getCurrentSession().update(ca);
			
		}*/
	
		
	}
	
	
		
	
	
	
	
	
	

