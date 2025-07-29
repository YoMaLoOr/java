package threads;

import java.util.Random;

public class ThreadUtil {
    public static void sleep(long milis){
        try {
            Thread.sleep(milis);
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }
    }
    public static void sleep(){
        sleep(new Random().nextLong(2000));
    }
}
