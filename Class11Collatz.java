import java.util.Scanner;

public class Class11Collatz {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Introduce el numero que quieres comprobar: ");
        String data = sc.next();
        int num = Integer.parseInt(data);

        while(num!=1){
            if (num%2 == 0)
                num = num/2;
            else
                num = num*3+1;
            
            System.out.println(num);
        }
    }
}
