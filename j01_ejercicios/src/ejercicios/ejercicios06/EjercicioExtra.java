package src.ejercicios.ejercicios06;

public class EjercicioExtra {
    public static void main(String[] args) {
        int num = 18;
        System.out.println(decABin(num));
        System.out.println(decAHex(num));
    }

    public static String decABin(int num){
        if(num < 2)
            return "" + num;
        
        return "" + decABin(num/2) + (num % 2);
    }

    public static String decAHex(int num){
        if(num < 16)
            return convertirNum(num + "");
        return "" + decAHex(num/16) + convertirNum(num%16 + "");
    }

    public static String convertirNum(String num){
        int number = Integer.parseInt(num);

        if(number == 10)
            return "A";
        if(number == 11)
            return "B";
        if(number == 12)
            return "C";
        if(number == 13)
            return "D";
        if(number == 14)
            return "E";
        if(number == 15)
            return "F";

        return number + "";
    }
}
