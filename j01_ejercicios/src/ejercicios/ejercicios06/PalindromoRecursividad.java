package src.ejercicios.ejercicios06;

public class PalindromoRecursividad {
    public static void main(String[] args) {
        System.out.println(EsPalindromo("123454321"));
        System.out.println(EsPalindromo("hola"));
        System.out.println(EsPalindromo("sometemos"));
    }

    public static boolean EsPalindromo(String cadena){
        if (cadena.length() <=1) {
            return true;
        }
        return cadena.charAt(0) == cadena.charAt(cadena.length()-1) && EsPalindromo(cadena.substring(1, cadena.length()-1));
    }
}
