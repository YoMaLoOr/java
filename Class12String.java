public class Class12String {
    public static void main(String[] args) {
        String texto = "Desarrollo con Java";
        System.out.println("Longitud texto: " + texto.length());
        System.out.println("toLower() " + texto.toLowerCase());
        System.out.println("toUpper() " + texto.toUpperCase());
        //Buscamos la letra a de diversas formas
        System.out.println("indexOf('a'): " + texto.indexOf('a')); //3
        //la sobrecarga busca a partir de un indice superior
        System.out.println("indexOf('a', 4): " 
            + texto.indexOf('a', 4));
        System.out.println("lastIndexOf('a'): " + texto.lastIndexOf('a'));
        //la sobrecarga busca a partir de un indice inferior
        System.out.println("lastIndexOf('a', 17):" 
            + texto.lastIndexOf('a', 17));
        //Nos quedamos con una parte de la cadena
        System.out.println("substring(5): "
            + texto.substring(5)); 
        //tenemos una sobrecarga indicando un final
        System.out.println("substring(2,4): "
            + texto.substring(2,4));
        System.out.println("startsWith('D'): "
            + texto.startsWith("D"));
        System.out.println("endsWith('a'): "
            + texto.endsWith("a"));
        //Recuperar un caracter
        System.out.println("charAt(5): "
            + texto.charAt(5));
        //Aplicar un método a un objeto, no implica
        //que el objeto sea modificado.
        //Los métodos (algunos) devuelven un valor del objeto.
        //convertimos el texto a mayusculas
        texto.toUpperCase();
        //Si deseamos modificar el objeto texto, debemos igualarlo
        texto = texto.toUpperCase();
        System.out.println(texto);
        //Recorrer letra a letra un String
        for (int i = 0; i < texto.length(); i++){
            char letra = texto.charAt(i);
            System.out.println("Letra (" + i 
                + "): " + letra);
        }
    }
}