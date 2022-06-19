package vjezba;

import javax.swing.JOptionPane;

public class Z06 {

	public static void main(String[] args) {
		
		// Učitati dva broja veći se množi za 2 a manji dijeli sa 3.
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi x"));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi y"));
		
		System.out.println("Uneseni brojevi su: "+ x + " i " + y);
		if (x > y) {
			System.out.println("veci*2 = " +(x*2) +"  manji/3 = " +(y/3));
		}else {
			System.out.println("veci*2 = " +(y*2) +"  manji/3 = " +(x/3));
		}

	}

}
