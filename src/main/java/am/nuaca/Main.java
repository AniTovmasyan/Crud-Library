package am.nuaca;

public class Main {
    public static void  main(String[] args) {
        MyException myException = new MyException();

        try {
            myException.byZero();
        } catch (ArithmeticException e) {
            System.out.println(e.getMessage());
        }


        try {
            myException.lengthExcp();

        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println(e.getMessage());
        }




        try
        {
            myException.stringExcp();
        }
        catch(NullPointerException e)
        {
            System.out.print(e.getMessage());
        }
    }
}