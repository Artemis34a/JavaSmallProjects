package java_streams.func_interfaces;

import java.util.List;

public class Melon {

    private final String type;
    private final int weight;
    private final String origin;


    public Melon(String type, int weight, String origin) {
        this.type = type;
        this.weight = weight;
        this.origin = origin;
    }

    public String getType() {
        return type;
    }

    public int getWeight() {
        return weight;
    }

    public String getOrigin() {
        return origin;
    }

    @Override
    public String toString() {
        return "Melon{" +
                "type='" + type + '\'' +
                ", weight=" + weight +
                ", origin='" + origin + '\'' +
                '}';
    }


    // getters & setters & toString


    public static void main(String[] args) {
        Melon m = new Melon("Watermelon", 116, "England");
        System.out.println(m);
    }



}
