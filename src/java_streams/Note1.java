package java_streams;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.*;

public class Note1 {

    public static void main(String[] args) {
        List<Person> sample = new ArrayList<>();

        Person p1 = new Person("Wilhem", 20, "Hillerska");
        sample.add(p1);
        Person p2 = new Person("Felice", 30, "Hillerska");
        sample.add(p2);
        Person p3 = new Person("Simon", 16, "Hillerska");
        sample.add(p3);
        Person p4 = new Person("Sarah", 32, "Hillerska");
        sample.add(p4);
        Person p5 = new Person("August", 35, "Hillerska");
        sample.add(p5);


        List<Person> personnes = p1.exo1(sample);

        for (Person p : sample){
            System.out.println("Person : " + p.name + " age : " + p.age);
        }

        System.out.println(personnes.size());

        for (Person p : personnes){
            System.out.println("Person2 : " + p.name + " age : " + p.age);
        }






    }
}
// Flitrer une liste d'objets selon un critère complexe
// age > 30

class Person {
    String name;
    int age;
    String city;

    public Person(String name, int age, String city) {
        this.name = name;
        this.age = age;
        this.city = city;
    }

    List<Person> exo1(List<Person> persons){
        List<Person> resultat = new ArrayList<>();
        resultat = persons.stream().filter(person -> age > 30 ).collect(Collectors.toList());
        return resultat;
    }
}
