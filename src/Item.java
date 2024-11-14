public class Item {

//    Encapsulation
    private String name;
    private int quantity;




    public String getName() {
        return name;
    }

    public int getQuantity() {
        return quantity;
    }

    public Item(String name, int quantity) {
        this.name = name;
        this.quantity = quantity;
    }
}
