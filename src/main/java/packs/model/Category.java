package packs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {

@Id @GeneratedValue(strategy=GenerationType.AUTO)	
int id;
String name, description;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public Category() {
	super();

}
public Category(int id, String name, String description) {
	super();
	this.id = id;
	this.name = name;
	this.description = description;
}





}
