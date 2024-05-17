import java.math.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
public class SommeDePremiers {
    static int n;
    List<Integer> numbers = new ArrayList<>();
    int s = 0;
    void getN(Scanner sc){
        System.out.println("Entrez la valeur de N : entier naturel... : ");
        n = sc.nextInt();
    }
    void evenNumbers(){
       for(int i = 1; i<=n; i++){
           if(estPremier(i)) {
               numbers.add(i);
               s = s + i;
           }
       }

    }
    boolean estPremier(int i){
        for (int j = 2; j < i; j++) {
            if ((i%j) == 0) return false;
        }
        return true;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);;
        SommeDePremiers e = new SommeDePremiers();
        e.getN(sc);
        e.evenNumbers();
        System.out.println(e.numbers);
        System.out.println(" La somme est : "+ e.s);

    }
}
