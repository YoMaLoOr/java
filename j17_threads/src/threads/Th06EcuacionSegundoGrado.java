package threads;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

public class Th06EcuacionSegundoGrado {

    public static void main(String[] args) throws InterruptedException, ExecutionException {
        double a = 1;
        double b = 1;
        double c = 2;

        CompletableFuture<Double> bCuadrado = CompletableFuture.supplyAsync(() -> {
            ThreadUtil.sleep(3000);
            System.out.println("Calculando b^2");
            return Math.pow(b, 2);
        });

        CompletableFuture<Double> cuatroAC = CompletableFuture.supplyAsync(() -> {
            ThreadUtil.sleep(4000);
            System.out.println("Calculando 4ac");
            return 4 * a * c;
        });

        CompletableFuture<Double> discriminante = bCuadrado.thenCombine(cuatroAC, (b2, y) -> {
            ThreadUtil.sleep(1000);
            System.out.println("Calculando discriminante");
            return b2 - y;
        });
        
        CompletableFuture<Double> raizDiscriminante = discriminante.thenApply(d -> {
            ThreadUtil.sleep(3000);
            if (d<0) 
                throw new RuntimeException("Discriminante negativo, no hay raices reales");
            System.out.println("Calculando raiz del discriminante");
            return Math.sqrt(d);
        });

        CompletableFuture<Double> menosB = CompletableFuture.supplyAsync(() -> {
            ThreadUtil.sleep(6000);
            System.out.println("Calculando -b");
            return -b;
        });

        CompletableFuture<Double> dosA = CompletableFuture.supplyAsync(() -> {
            ThreadUtil.sleep(4000);
            System.out.println("Calculando 2a");
            return 2 * a;
        });

        CompletableFuture<Double> x1 = menosB.thenCombine(raizDiscriminante, (mB, rD) -> {
            ThreadUtil.sleep(1000);
            System.out.println("Calculando x1");
            return mB + rD;
        }).thenCombine(dosA, (x, dA) -> x/dA);

        CompletableFuture<Double> x2 = menosB.thenCombine(raizDiscriminante, (mB, rD) -> {
            ThreadUtil.sleep(1000);
            System.out.println("Calculando x2");
            return mB - rD;
        }).thenCombine(dosA, (x, dA) -> x/dA);

        System.out.println(x1.get());
        System.out.println(x2.get());
    }
}
