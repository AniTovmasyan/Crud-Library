package am.nuaca;

public class MyException {
    public void byZero() throws ArithmeticException {
        int a = 5, b = 0;
        System.out.println(a / b);
    }

    public void lengthExcp() throws ArrayIndexOutOfBoundsException {
        int[] arr = {5, 4, 3, 2, 1};
        for (int i = 0; i < arr.length + 1; i++) {
            System.out.println(arr[i] + " ");
        }
    }

    public void stringExcp() throws NullPointerException {
        String ptr = null;
        if (ptr.equals("gfg")) {
            System.out.print("Same");
        } else {
            System.out.print("Not Same");
        }
        System.out.print("Not Samettttttttt");
    }

}