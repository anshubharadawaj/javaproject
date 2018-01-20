package packs.dao;


import java.util.List;

import packs.model.Product;


public interface ProductDAO {
	

		public void saveProduct(Product  p1);

		public void overwrite(Product p);
		
		List  <Product>  showAll();
		
		public Product getproductById(int id);
		public void removeproduct(Product pp);
		public void editproduct(Product prob);

	}



