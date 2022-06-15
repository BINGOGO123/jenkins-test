import java.util.Random;

public class Main {
    public static void main(String[] args) {
        System.out.println(new java.lang.Error());
        var env = new Env("bingoz", 123);
        System.out.println(env.number);
        var env1 = new Env("bingoz", 34);
    }
}

class Env {
    public String name;
    public int number;
    public Env(String _name, int _number) {
        name = _name;
        number = _number;
    }
}