package model;
public class Item {

   public String id;
   public String name;
   public int price;

    public Item(String a, String b, int c) {
        this.id = a;
        this.name = b;
        this.price = c;
    }

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
    
}
