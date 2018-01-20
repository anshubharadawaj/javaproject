package packs.model;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

	@Entity
	public class Product {
		@Id @GeneratedValue(strategy=GenerationType.AUTO)
		int id;
		
		String name, brand;
		
		int price;
		int quantity;
		String desc;
		
		String imageUrl;
		
		
		@Transient
		MultipartFile image;
		
		public String getImageUrl() {
			return imageUrl;
		}
		
		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}
			public MultipartFile getImage() {
			return image;
		}
		public void setImage(MultipartFile image) {
			this.image = image;
		}
		public String getDesc() {
			return desc;
		}
		public void setDesc(String desc) {
			this.desc = desc;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

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
			
		public Product() {
			super();
			
		}

		public Product(int id, String name, String brand, int price, int quantity, String desc, String imageUrl,
				MultipartFile image) {
			super();
			this.id = id;
			this.name = name;
			this.brand = brand;
			this.price = price;
			this.quantity = quantity;
			this.desc = desc;
			this.imageUrl = imageUrl;
			this.image = image;
		}

		
		
	}

	
	
	
	
	

