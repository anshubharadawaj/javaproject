package packs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cart {

@Id @GeneratedValue(strategy=GenerationType.AUTO)
int id;
String brand;
int price;
int quantity;
int pid;
 String billingaddress;
 String shippingaddress;
String username;
 

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}



public String getBillingaddress() {
	return billingaddress;
}
public void setBillingaddress(String billingaddress) {
	this.billingaddress = billingaddress;
}
public String getShippingaddress() {
	return shippingaddress;
}
public void setShippingaddress(String shippingaddress) {
	this.shippingaddress = shippingaddress;
}
public Cart() {
	super();
	
	
}
public Cart(int id, String brand, int price, int quantity, int pid, String billingaddress, String shippingaddress) {
	super();
	this.id = id;
	this.brand = brand;
	this.price = price;
	this.quantity = quantity;
	this.pid = pid;
	this.billingaddress = billingaddress;
	this.shippingaddress = shippingaddress;

}






 
	
	
}
