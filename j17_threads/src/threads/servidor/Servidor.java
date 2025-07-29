package threads.servidor;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

public class Servidor {

    private final int puerto;

    public Servidor(final int puerto){
        this.puerto = puerto;
    }
    
    public void start(){
        System.out.println("Servidor esperando conexiones");
        try(ServerSocket server = new ServerSocket(puerto)){
            while (true) { 
                final Socket cliente = server.accept();
                new AtiendeCliente(cliente);
            }
        } catch (final IOException e){
            System.err.println("No se puede abrir el puerto " + puerto);
        }
    }
    private class AtiendeCliente implements Runnable{

        private final Socket socket;
        private  String user;
        private PrintWriter out;

        private static int cant;
        private static Map<String, AtiendeCliente> sala = new HashMap<>();

        public AtiendeCliente(final Socket socket){
            this.socket = socket;
            new Thread(this).start();
        }

        @Override
        public void run(){

            log("SRV: " + "Nuevo Cliente Conectado");
            
            try(PrintWriter out = new PrintWriter(socket.getOutputStream(), true); BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()))) {
                this.out = out;

                out.println("Bienvenido al servidor MUTONTO");
                out.println("Por favor identificate");
                user = in.readLine();
                while ((sala.containsKey(user)) || user.length() == 0) { 
                    out.println("SRV: " + "El usuario es incorrecto o ya existe");
                    out.println("SRV: " + "Ingresa tu usuario.");
                    user=in.readLine();
                }
                out.println("SRV: " + user + " ya estas en la sala.");
                help();
                sala.put(user, this);
                cant++;
                log("SRV: " + user + " se ha conectado");
                log("SRV: " + "Hay " + cant + " usuarios en la sala");
                difusion("SRV: " + user + " se ha conectado");
                String linea;
                while ((linea = in.readLine()) != null) { 
                    if (linea.length() > 0 && linea.charAt(0) == '@') {
                        if (linea.contains(" ")) {
                            String usrDestino = linea.substring(1, linea.indexOf(" "));
                            String mensaje = linea.substring(linea.indexOf(" ") + 1);
                            if (sala.containsKey(usrDestino)) {
                                sala.get(usrDestino).out.println("PRIVADO DE " + user + ": " + mensaje);
                            }else {
                                out.println(usrDestino + " no esta conectado");
                            } 
                        }else {
                            out.println("Formato incorrecto, no se ha enviado mensaje");
                        } 
                    } else{//no es un mensaje privado
                        switch (linea.toLowerCase()) {
                            case "-w" :
                                for (String usr : sala.keySet()){
                                    out.println("SRV: " + usr);
                                }
                                break;
                            case "-h" : 
                                help();
                                break;
                            default: 
                                difusion(user + ": " + linea);
                        }
                    }
                }
            } catch (IOException ex) {
            }
        }
        private void log(String mje){
            System.out.println(now() + " - " + mje);
        }
        
        private String now(){
            LocalDateTime ahora = LocalDateTime.now();
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yy HH:mm:ss");
            return dtf.format(ahora);
        }
        
        private void difusion(String mje){
            for (AtiendeCliente cli : sala.values()) {
                cli.out.println(mje);
            }
        }
        private void help(){
            out.println("-----------------------------------");
            out.println("Ayuda del MUTONTO");
            out.println("-----------------------------------");
            out.println("-q: terminar sesion.");
            out.println("-h: mostrar esta ayuda.");
            out.println("-w: consultar usuario.");
            out.println("@Usuario mensaje: mensajes privados.");
            out.println("-----------------------------------");
        }
    }
    public static void main(String[] args) {
        new Servidor(1234).start();
    }
}
