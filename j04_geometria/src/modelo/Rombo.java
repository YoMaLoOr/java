package src.modelo;
import java.util.Objects;

public class Rombo extends Figura{

    public Rombo(int x, int y) {
        super(x, y);
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Rombo)) {
            return false;
        }
        Rombo rombo = (Rombo) o;
        return Objects.equals(this, rombo);
    }

    @Override
    public String toString() {
        return "{" +
            "}";
    }

    @Override
    public double perimetro(){
        return 0;
    }

    @Override
    public double area(){
        return 0;
    }
}
