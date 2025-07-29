package threads;

public class Th05Estados2 {
    public static void main(String[] args) {
        Object lock = new Object();
        //Hilo estado WAITING
        Thread th1 = new Thread(()->{
            synchronized (lock) {
                try {
                    lock.wait();
                } catch (InterruptedException ex) {
                }
            }
        }, "primero");
        Thread th2 = new Thread(()->{
            ThreadUtil.sleep(5000);
        }, "segundo");
        th1.start();
        th2.start();

        System.out.println(th1.getName() + ": " + th1.getState());
        System.out.println(th2.getName() + ": " + th2.getState());
    }
}
