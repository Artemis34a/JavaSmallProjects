package rand_java_training;
import java.util.*;


import static java.lang.Math.pow;

public final class ComplexNumber {
    final float r; //real
    final float img; // imaginary

    public ComplexNumber(float a, float b){
        r = a;
        img = b;
    }

    public float getR() {
        return r;
    }

    public float getImg() {
        return img;
    }

    ComplexNumber add(ComplexNumber z){
        return new ComplexNumber(this.getR() + z.getR(), this.getImg() + z.getImg());
    }

    ComplexNumber sub(ComplexNumber z){
        return new ComplexNumber(this.getR() - z.getR(), this.getImg() - z.getImg());
    }

    ComplexNumber mult(ComplexNumber z){
        return new ComplexNumber(this.r* z.r - this.img*z.img, this.img + z.img);
    }

    ComplexNumber div(ComplexNumber z){
        ComplexNumber trans = this.mult(z);
        return new ComplexNumber(trans.r/(z.r* z.r + z.img*z.img), trans.img/(z.r* z.r + z.img*z.img));
    }

    @Override
    public String toString() {
        return "ComplexNumber{" +
                "r=" + r +
                ", img=" + img +
                ", number = "+ this.r + " + " + this.img +"i " +
                '}';
    }

    public static void main(String[] args) {
        ComplexNumber num1 = new ComplexNumber(5, 7);
        System.out.println(num1);
        ComplexNumber num2 = new ComplexNumber(6, 15);
        System.out.println(num2);


        ComplexNumber num3 = num1.add(num2);
        System.out.println(num3);

        ComplexNumber num3p = num1.sub(num2);
        System.out.println(num3p);

        ComplexNumber num4 = num1.mult(num2);
        System.out.println(num4);

        ComplexNumber num5 = num1.div(num2);
        System.out.println(num5);
    }
}
