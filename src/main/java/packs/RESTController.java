package packs;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import packs.dao.CartDao;
import packs.dao.ProductDAO;
import packs.dao.UserDAO;
import packs.model.Cart;
import packs.model.Product;
import packs.model.User;

@RestController
public class RESTController {
	@Autowired
	CartDao cdao;
	
	@Autowired
	ProductDAO pdao;
	
	@Autowired
	UserDAO udao;
	
	@RequestMapping(value="/deletefromcart",method=RequestMethod.POST)
	public String deletefromcart(@RequestBody String data)
	{
		System.out.println("deletefromcart");
	
		System.out.println(data);
		
		try{ 
			JSONParser jparr = new JSONParser();
			
			JSONObject inp = (JSONObject)jparr.parse(data);
			
			System.out.println(inp);
			
			int id = Integer.parseInt( inp.get("id").toString());
			
			
			Cart c = cdao.getcartById(id);
			int q = c.getQuantity();
			
			Product p=pdao.getproductById(c.getPid());
			int qty1=p.getQuantity();
			
			qty1=qty1+q;
			p.setQuantity(qty1);
			this.pdao.overwrite(p);
			
			cdao.removecart(id);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return "{\"msg\":\"Deleted\"}";
	}
	
	@RequestMapping(value="/getAllCartItems",method=RequestMethod.POST)
	public String getAllCartItems()
	{
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();

		JSONArray jarr = new JSONArray();
		
		for(Cart c : cdao.showAll())
		{
			if(c.getUsername().equals(currUser))
			{
				JSONObject jobj = new JSONObject();

				Product p = pdao.getproductById(c.getPid());
				if(p==null)
					continue;

				jobj.put("id", c.getId());
				jobj.put("quantity", c.getQuantity());
				jobj.put("price" , p.getPrice());
				jobj.put("brand" , p.getBrand());
				jobj.put("desc", p.getDesc());
				jobj.put("name", p.getName());
				jobj.put("shipaddr", c.getShippingaddress());
				jobj.put("billaddr", c.getBillingaddress());
				
				System.out.println(jobj);
				
				jarr.add(jobj);
			}
		}
		
		System.out.println(jarr.toString());
		
		System.out.println("GHJ");
		
		return jarr.toString();
	}


@RequestMapping(value="/getAddress",method=RequestMethod.GET)
public String getAddress()
{
	System.out.println("getAddress");
	
	String currUser = "";
	
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth != null && !auth.getName().equals("anonymousUser"))
    	currUser = auth.getName();
    
    JSONObject jobj = new JSONObject();
		
	for( User u : udao.getAllUser())
	{
		
		if( u.getEmail().equals(currUser))
		{	
			String addr = u.getAddress();
			
			System.out.println(addr);
			jobj.put("billaddr", u.getAddress());
			jobj.put("shipaddr", u.getAddress());
			
			
			return jobj.toJSONString();
		}
		
	}
	
	return jobj.toJSONString();
}

@RequestMapping(value="/UpdateCartToDB",method=RequestMethod.POST)
public String UpdateCartToDB(@RequestBody String data)
{
	System.out.println("UpdateCartToDB");
	
	String currUser = "";
	
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth != null && !auth.getName().equals("anonymousUser"))
    	currUser = auth.getName();
	
    System.out.println(data);
			
	try{
		JSONParser jparr = new JSONParser();
		
		JSONObject inp = (JSONObject)jparr.parse(data);
		
		System.out.println(inp);

		String ship = inp.get("ship").toString();
		String bill = inp.get("bill").toString();
		cdao.update(currUser, ship, bill);
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	return "{\"msg\":\"Updated\"}";
    
    
}

@RequestMapping(value="/DeleteCartItems",method=RequestMethod.POST)
public String DeleteCartItems()
{
	System.out.println("DeleteCartItems");
	String currUser = "";
	Authentication auth = SecurityContextHolder.getContext().getAuthentication(); 
	if (auth != null     && !auth.getName().equals("anonymousUser")) 
		currUser = auth.getName();
	for(Cart c : cdao.showAll() )
	{
		if( c.getUsername().equals(currUser))
		{
			int a=c.getId();
			cdao.removecart(a);
			}
		}
	return "{\"msg\":\"Deleted Items\"}";
	}

}


	
