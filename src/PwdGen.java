import java.util.*;
import java.util.random.RandomGenerator;

public class PwdGen {

    private List<Character> characters = new ArrayList<>();
    List<List<Character>> options = new ArrayList<>();
    int mini, num, specialC;
    Scanner sc = new Scanner(System.in);

    public void getDatas(){
        System.out.println("What's the minimum length ?  ");
        this.mini = sc.nextInt();
        System.out.println("How many special characters ?  ");
        this.specialC = sc.nextInt();
        System.out.println("How many numbers ?  ");
        this.num = sc.nextInt();
    }
    protected void pwdGeneration(){
        System.out.println();
    }

    @Override
    public String toString() {
        return "PwdGen{" +
                "mini=" + mini +
                ", num=" + num +
                ", specialC=" + specialC +
                '}';
    }

    public static void main(String[] args) {
        PwdGen p = new PwdGen();
        p.getDatas();
        System.out.println(p);

    }
}
