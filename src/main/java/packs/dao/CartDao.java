package packs.dao;

import java.util.List;

import packs.model.Cart;


public interface CartDao {
	public void saveCart (Cart crt);
	
	List  <Cart>  showAll();
	
	public Cart getcartById(int id);
	public void removecart(int crt4);
	public void editcart(Cart crt5);
	 public void update( String user, String ship, String bill );

}
