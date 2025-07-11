package io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

public class LecturaTeclado {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        

        System.out.println("Ingresa algo: ");
        String linea = lee();
        System.out.println(linea);
    }

    public static String lee() {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String linea;
        try {
            linea = br.readLine();
        } catch (IOException e) {
            throw new LecturaTecladoException();
        }
        return linea;
    }
}
