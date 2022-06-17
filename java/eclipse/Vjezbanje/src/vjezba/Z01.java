package vjezba;

import javax.swing.JOptionPane;

public class Z01 {

	public static void main(String[] args) {
		
		// Učitati a,b, ako je a veće od b onda je c=2a-b, inače je c=a+2b.
		
		int a = Integer.parseInt(JOptionPane.showInputDialog("Unesi a"));
		int b = Integer.parseInt(JOptionPane.showInputDialog("Unesi b"));
		int c;
		
		if (a > b) {
			c = 2 * a - b;
		} else {
			c = a + 2 * b;
		}
		System.out.println("Prvi uneseni broj je: ");
		System.out.println(a);
		System.out.println("Drugi uneseni broj je: ");
		System.out.println(b);
		System.out.println("Riješenje jednadzbe: ");
		System.out.println(c);
	}

}
