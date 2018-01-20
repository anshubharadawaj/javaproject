package packs.dao;



import java.util.List;

import packs.model.Category;
import packs.model.Product;



public interface CategoryDao {
	
	public void savecategory(Category  c);
	public void overwrite(Category c1);
	
	List  <Category>  showAll();
	
	public Category getcategoryById(int id);
	public void removecategory(Category cc);
	public void editcategory(Category ce);
	

}
