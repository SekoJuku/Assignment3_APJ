package Item;

public class Item implements ItemInterface{
    private int price;
    private String name;
    private String category;
    private String description;

    public Item(int price, String name, String category, String description) {
        this.description = description;
        setCategory(category);
        setName(name);
        setPrice(price);
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
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

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }


}
