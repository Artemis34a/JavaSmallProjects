import java.sql.SQLOutput;

interface Printable {
    public void print (String suffix, int suffix2);
}

public class IntroLambda1 {
    static String s = " Ramses ";
    static int age = 2;
    static void printThing(Printable thing){
        thing.print(s, age);
    }
    public static void main(String[] args) {
        // int n1 = 5, n2 = 3;
        /* Printable p = new Printable() {
            @Override
            public int Print(String s) {
                System.out.println(s);
            }
        }; */

        Printable thing = new Printable() {
            @Override
            public void print(String suffix, int suffix2) {

            }
        };


        Printable p = (name, age) -> System.out.println("MIAOU ! I am " + name + " a " +age+" years old cat");
        System.out.println(p);
    }


}

