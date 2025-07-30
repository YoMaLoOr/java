package productorconsumidor;

import java.util.LinkedList;
import java.util.Queue;
import threads.ThreadUtil;

public class ThPC02 {

    public static final Queue<Integer> buffer = new LinkedList<>();
    public static final int CAPACIDAD = 5;
    public static final int CANT_PROD = 2;
    public static final int CANT_CONS = 9;
    public static int valor = 0;
    public static final Object LOCK = new Object();
    

    public static void main(String[] args) {
        
        Runnable productor = () -> {
            while (true) { 
                ThreadUtil.sleep();
                synchronized (LOCK) {
                    while (buffer.size() == CAPACIDAD) { 
                        try {
                            LOCK.wait();
                        } catch (InterruptedException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                    }
                    buffer.offer(valor);
                    System.out.println(Thread.currentThread().getName() + " produjo " + valor);
                    valor++;
                    LOCK.notifyAll();
                    
                    if (buffer.size() > CAPACIDAD) {
                        System.err.println("Error, se produjeron " + buffer.size());
                        System.exit(1);
                    }
                }
            }
        };
        Runnable consumidor = () -> {
            while (true) { 
                ThreadUtil.sleep();
                synchronized (LOCK) {
                    while (buffer.isEmpty()) { 
                        try {
                            LOCK.wait();
                        } catch (InterruptedException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                    }

                    int v = buffer.poll();
                    System.out.println(Thread.currentThread().getName() + " consumio " + v);
                    LOCK.notifyAll();

                    if (buffer.size() < 0) {                                
                        System.err.println("Error, el tamaño del buffer es " + buffer.size());
                        System.exit(1);
                    }     
                }
            } 
        };
        for (int i = 1; i <= CANT_PROD; i++) {
            new Thread(productor, "productor" + i).start();
        }
        for (int i = 1; i <= CANT_CONS; i++) {
        new Thread(consumidor, "consumidor" + i).start();
        }
    }
}
