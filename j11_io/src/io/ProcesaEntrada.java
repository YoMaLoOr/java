package io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;

public class ProcesaEntrada {
    public static void main(String[] args) throws IOException {

        // FileReader fr = new FileReader("/Users/mananas/Html/H06_tabla.html");
        // System.out.println(leerEntrada(fr));

        URL url = new URL("https://www.google.com/webhp?hl=es&sa=X&ved=0ahUKEwiQjbfDy7SOAxWrU6QEHVuRCx4QPAgI");
        System.out.println(leerEntrada(url.openStream()));
    }

    public static String leerEntrada(InputStream is){
        return leerEntrada(new InputStreamReader(is));
    }

    public static String leerEntrada(Reader r) {
        StringBuilder sb = new StringBuilder();
        try (BufferedReader br = new BufferedReader(r)) {
            String linea;
            while ((linea = br.readLine()) != null) { 
                sb.append(linea + "\n");
            }
        } catch (IOException e) {
            throw new RuntimeException();
        }
        return sb.toString();
    }
}
