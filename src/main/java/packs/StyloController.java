package packs;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;


//import javax.persistence.metamodel.StaticMetamodel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import packs.dao.CartDao;
import packs.dao.CategoryDao;
import packs.dao.ProductDAO;
import packs.dao.UserDAO;
import packs.model.Cart;
import packs.model.Category;
import packs.model.User;
import packs.model.Product;

@Controller
public class StyloController {
	
	@Autowired
	UserDAO dao;
	
	@Autowired
	ProductDAO dao2;
	
	@Autowired
	CategoryDao dao3;
	
	@Autowired
	CartDao dao4;
	
	List <Product> products;
	
	List <Category> categories;
	
	
	@RequestMapping("/")
	public String home()
	{
	   return "index";
	}
	@RequestMapping("/index")
	public String Home()
	{
		
		
		return "index";
	}
 
	

	@RequestMapping("/a")
	public String jeans()
	{
		
		return "a";
	}
	
	
	/*@RequestMapping("/register")
	public String Register()
	{
		//System.out.println(Prod.getId());
		//System.out.println(Prod.getName());
		
		return "register";
	
	}*/
	
	@RequestMapping("/category")
	public String Category()
	{
		return "category";
	
	}
	
	@RequestMapping("/aboutus")
	public String Aboutus()
	{
		return "aboutus";
	
	}
	@RequestMapping("/contactus")
	public String Contactus()
	{
		return "contactus";
	
	}
	
	@RequestMapping("/signup")

	public String signup()
	{
		
		return "signup"; 
	}
	
	@ModelAttribute("addNewUser")
	public User createUser()
	{
		return new User();
	}
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public ModelAndView createNewUser(@ModelAttribute("addUser")User ob,BindingResult result)
	{
	
		
		dao.saveUser(ob);
		return new ModelAndView("index","r",null);
	}

	
	
	
	@RequestMapping("/addproduct")

	public String addproduct()
	{
		
		return "addproduct"; 
	}
	@ModelAttribute("addNewProduct")
	public Product createProduct()
	{
		return new Product();
	}
	@RequestMapping(value="/addProduct", method=RequestMethod.POST)
	public ModelAndView createNewProduct( @ModelAttribute("addProduct")Product p,BindingResult result, HttpSession session)
	{
	 if(result.hasErrors())
	 {
		 ModelAndView m= new  ModelAndView("addproduct");
		 return m;
		 
	 }
		dao2.saveProduct(p);
		
		
		ServletContext context=session.getServletContext();
		String path=context.getRealPath("/");
		

		File file=new File(path+"/resources/"+p.getId()+".jpg");
		System.out.println(path);
		try
		{
	    byte arr[]=p.getImage().getBytes();
		BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(file));
		bos.write(arr);
		
	    bos.close();
	    
	    Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
	    		  "cloud_name", "anshu",
	    		  "api_key", "759834824686791",
	    		  "api_secret", "o23B3E73LWZHv8zbniqz_X4bCeg"));
	    
	    Map uploadResult = cloudinary.uploader().upload(file, ObjectUtils.emptyMap());
		
			System.out.println(uploadResult);
	    
			p.setImageUrl(uploadResult.get("secure_url").toString());
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("Multipart exception"+ex);
		}
		dao2.overwrite(p);
		return new ModelAndView("index","r",null);
	}
		
	@RequestMapping("/Showall")
	public String showproduct(ModelMap map)
	{  
		 products = dao2.showAll();
		 for(Product ob: products)
		 {
			 System.out.println(ob.getId()+"\t"+ob.getName()+"\t"+ob.getImageUrl());
		 }
		map.addAttribute("listData",products);
		return "Showall";
		
	}
	
	
	
	
	@RequestMapping("/remove/{id}")
    public String removeproduct(@PathVariable("id") int id, HttpSession session){
		
		ServletContext context=session.getServletContext();
		String path=context.getRealPath("/");
		Path p=Paths.get("/resources/"+id+".jpg");
		if(Files.exists(p))
		{
			try{
			Files.delete(p);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		System.out.println("id  "+id);
		Product pro=dao2.getproductById(id);
		dao2.removeproduct(pro);
        return "redirect:/Showall";
	}	
	 
	
	
	@RequestMapping("/update/{id}")
	public String editproduct(@PathVariable("id") int id, HttpSession session, ModelMap model){
		
		
		Product pro=dao2.getproductById(id);
		MultipartFile image=pro.getImage();
		ServletContext context=session.getServletContext();
		String path=context.getRealPath("/");
		Path p=Paths.get("/resources/"+id+".jpg");
		File file=new File(path+"./resources/"+id+".jpg");
		if(image!=null && !image.isEmpty())
		{
			try{
			image.transferTo(file);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		model.addAttribute("product",pro);
		

		return "editForm";
		
	}
	
	@RequestMapping(value= "/editProduct", method=RequestMethod.POST)
	public String editProduct(@ModelAttribute("editProduct")Product p){
		
		System.out.println(p);
		System.out.println("null p done");
		System.out.println(p.getId());
		dao2.overwrite(p);
		return "thanku";
	}
	
	
	
 /* category	*/
	
	
	@RequestMapping("/addcategory")

	public String addcategory()
	{
		
		return "addcategory"; 
	}
	

	@ModelAttribute("addNewCategory")
	public Category createCategory()
	{
		return new Category();
	}
	@RequestMapping(value="/addCategory", method=RequestMethod.POST)
	public ModelAndView createNewCategory(@ModelAttribute("addCategory")Category c,BindingResult result)
	{
	
		
		dao3.savecategory(c);
		return new ModelAndView("index","r", null);
		
		
	}
	
	
	
	
	@RequestMapping("/allcategory")
	public String showcategory(ModelMap map)
	{  
		 categories = dao3.showAll();
		 for(Category ca: categories)
		 {
			 System.out.println(ca.getId()+"\t"+ca.getName());
		 }
		map.addAttribute("listData",categories);
		return "allcategory";
		
	}
	
	@RequestMapping("/removec/{id}")
    public String removecategory(@PathVariable("id") int id, HttpSession session){
		
		
		System.out.println("id  "+id);
		Category ca=dao3.getcategoryById(id);
		dao3.removecategory(ca);
        return "redirect:/allcategory";
		
		}
		

		
		
		@RequestMapping("/updatec/{id}")
		public String editupdate(@PathVariable("id") int id, HttpSession session, ModelMap model){
			
			
			Category ca=dao3.getcategoryById(id);
			model.addAttribute("category",ca);
			

			return "editcategory";
		}
		
		
		@RequestMapping(value= "/editCategory", method=RequestMethod.POST)
		public String editProduct(@ModelAttribute("editCategory")Category c){
			
			System.out.println(c);
			System.out.println("null p done");
			System.out.println(c.getId());
			dao3.overwrite(c);
			return "thanku";
		}
		
		
		@RequestMapping("/user")
		public String showuser(ModelMap map)
		{  
			 products = dao2.showAll();
			 for(Product ob: products)
			 {
				 System.out.println(ob.getId()+"\t"+ob.getName()+"\t"+ob.getImageUrl());
			 }
			map.addAttribute("listData",products);
			return "user";
			
		}
		
		@RequestMapping("/signin")

		public String Login()
		{
			
			return "signin"; 
		}
		
		
		
		/*for user*/
		@RequestMapping("/productdesc")
		public String ProductDescription(ModelMap map)
		{  
			 products = dao2.showAll();
			 for(Product ob: products)
			 {
				 System.out.println(ob.getId()+"\t"+ob.getName()+"\t"+ob.getImageUrl());
			 }
			map.addAttribute("listData",products);
			return "productdesc";
		}

		
		@RequestMapping("/namedesc/{id}")
		public String namedescription(@PathVariable("id") int id, HttpSession session, ModelMap model){
			
			
			Product pro=dao2.getproductById(id);
			model.addAttribute("des",pro);
			

			return "namedesc";
			
}		
		

		
		public String LoginTest()
		{
		    //Date d = null;
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		    if (auth != null && !auth.getName().equals("anonymousUser"))
		    {    
		    	
		    	System.out.println(auth.getName());
		
		    	return "true";
		    }
			
		    System.out.println("false");
		    
			return "false";
		}


		
		  @RequestMapping(value="/AddCartToDB",method=RequestMethod.POST)
			public ModelAndView AddCartToDB( @RequestParam("quantity") int q,@RequestParam("id")int abc  )
			{
				ModelAndView mv = new ModelAndView("redirect:/cart");

				Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				 if (auth != null && !auth.getName().equals("anonymousUser"))
				 {
			
					 String currUser=auth.getName();
				
					 Cart a = new Cart();
					 
					 a.setUsername(currUser);
					 a.setQuantity(q);
					 
					 Product p = dao2.getproductById(abc);
					 
					// a.setDesc(p.getDesc());
					 
					 a.setPid(abc);
				//	 a.setPname(p.getName());
					 a.setPrice(p.getPrice());
					 
					 
					dao4.saveCart(a);
				
				 }
				 return mv;
			}	
		
		
		
		
}





